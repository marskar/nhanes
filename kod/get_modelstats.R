library(dplyr)
library(readr)
library(survey)
library(here)
get_modelstats <- function(
                           seed,
                           n_random_vars,
                           datafile_path,
                           pick_vars
                           ){
    set.seed(seed)
    #remove variables,
    #move chosen variables to the beginning, and
    #sample from the variables to be randomized
    read_rds(here(datafile_path)) %>%
        select(one_of(pick_vars),
               everything()[sample(seq(ncol(.)),
                                 n_random_vars)]) ->
    dat

    # create survey design object
    des <- svydesign(ids = ~SDPPSU6,
                     strata = ~SDPSTRA6,
                     weights = ~WTPFQX6,
                     nest = TRUE,
                     data = dat)

    # create left sides of equations
    form <- as.formula(Surv(PERMTH_INT, canc_mort) ~ x1)
    # create right sides of equations
    n_params <- ncol(dat) # the total number of parameters
    # n_params should equal the number of chosen variables
    # plus the number of random variables
    #r_cols <- (length(pick_vars)+1):n_params
    #y <- length(c("PERMTH_INT", "canc_mort"))
    #d <- length(c("SDPPSU6", "SDPSTRA6", "WTPFQX6"))
    #var_col_start <- y + d + 1
    var_cols <- 6:n_params

    vrs <- as.name(paste(names(dat)[var_cols], collapse=' + '))
    vrs2 <- as.name(paste(names(dat)[var_cols], collapse=', '))

    #set.seed(seed)
    #train <- sample(x = seq(nrow(dat)),
    #               n_random_vars = round(nrow(dat)*.7))
    # generate cox models without and with penalties
    rside1 <- paste("~ + ", vrs)
    rside2 <- paste("~ + ridge(", vrs2, ')')

    cox <- NULL
    try({cox <- svycoxph(update(form, rside1),
                        design = des, data = dat)},
        silent = TRUE)

    rid <- NULL
    try({rid <- svycoxph(update(form, rside2),
                        design = des, data = dat)})

    if(is.null(cox) & is.null(rid)){
        message(paste("cox and ridge models are both NULL",
                      "\n",
                      "returning empty dataframe"))
         df <- data_frame(n_vars = length(names(dat)),
                           type = NA,
                           aic = NA,
                           concordance =  NA,
                           hazard_ratio = list( NA, NA ),
                           hr_ci_lower =  list(NA, NA),
                           hr_ci_upper = list(NA, NA),
                           coef_pvalue = list(NA, NA))
         return(df)
    }
    # define functions needed to create first table
    get_con <- function(x) {
        signif(summary(x)$concordance[1]*100, digits = 2)
    }
    get_hr <- function(x) {
        list( summary(x)$conf.int[,"exp(coef)"] )
    }
    get_hr_ci_lower <- function(x) {
        list( summary(x)$conf.int[,"lower .95"] )
    }
    get_hr_ci_upper <- function(x) {
        list( summary(x)$conf.int[,"upper .95"] )
    }
    get_coef_pvalue <- function(x) {
        coefs <- summary(x)$coef
        list( coefs[,ncol(coefs)] )
    }
    get_df <- function(model){
        model_type <- deparse(substitute(model))
        data_frame(seed = seed,
                   n_vars = length(names(dat)),
                   type = model_type,
                   aic = AIC(model)["AIC"],
                   concordance =  get_con(model),
                   hazard_ratio = get_hr(model),
                   hr_ci_lower =  get_hr_ci_lower(model),
                   hr_ci_upper = get_hr_ci_upper(model),
                   coef_pvalue = get_coef_pvalue(model))
    }
    if(is.null(cox) & !is.null(rid)){
        df <- get_df(rid)
        message(paste("making ridge model with",
                      n_random_vars,
                      "random variables and seed",
                      seed))
    }
    if(!is.null(cox) & is.null(rid)){
        df <- get_df(cox)
        message(paste("making cox model with",
                      n_random_vars,
                      "random variables and seed",
                      seed))
    }
    if(!is.null(cox) & !is.null(rid)){
        cox_df <- get_df(cox)
        rid_df <- get_df(rid)
        message(paste("making cox and ridge models with",
                      n_random_vars,
                      "random variables and seed",
                      seed))
        df <- bind_rows(cox_df, rid_df)
    }
     return(df)
}
