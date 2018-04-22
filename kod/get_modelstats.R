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
    svydesign(ids = ~SDPPSU6,
              strata = ~SDPSTRA6,
              weights = ~WTPFQX6,
              nest = TRUE,
              data = dat) ->
    des

    # create left sides of equations
    form <- as.formula(Surv(PERMTH_INT, canc_mort) ~ x1)
    # create right sides of equations
    n_params <- ncol(dat) # the total number of parameters
    # n_params should equal the number of chosen variables
    # plus the number of random variables
    r_cols <- (length(pick_vars)+1):n_params
    if(n_random_vars==1){
    vrs <- as.name(names(dat)[n_params])
    vrs2 <- as.name(names(dat)[n_params])
    } else{
    vrs <- as.name(paste(names(dat)[r_cols], collapse=' + '))
    vrs2 <- as.name(paste(names(dat)[r_cols], collapse=', '))
    }

    #set.seed(seed)
    #train <- sample(x = seq(nrow(dat)),
    #               n_random_vars = round(nrow(dat)*.7))
    # generate cox models without and with penalties
    rside1 <- paste("~ strata(age_strat) + ", vrs)
    rside2 <- paste("~ strata(age_strat) + ridge(", vrs2, ')')

    cox <- NULL
    try({cox <- svycoxph(update(form, rside1),
                        design = des, data = dat)},
        silent = TRUE)

    rid <- NULL
    try({rid <- svycoxph(update(form, rside2),
                        design = des, data = dat)})

    # define functions needed to create first table
    get_con <- function(x) {
    signif(summary(x)$concordance[1]*100, digits = 2)
    }
    get_HR <- function(x) {
    summary(x)$conf.int[,"exp(coef)"]
    }
    get_HR_CI_lower <- function(x) {
    summary(x)$conf.int[,"lower .95"]
    }
    get_HR_CI_upper <- function(x) {
    summary(x)$conf.int[,"upper .95"]
    }
    get_coef_pvalue <- function(x) {
        coefs <- summary(x)$coef
        coefs[,ncol(coefs)]
    }
    get_df <- function(model){
        model_type <- deparse(substitute(model))
        data_frame(seed = seed,
               n_vars = length(names(dat)),
               type = model_type,
               aic = AIC(model)["AIC"],
               concordance =  get_con(model),
               hazard_ratio = get_HR(model),
               HR_CI_lower =  get_HR_CI_lower(model),
               HR_CI_upper = get_HR_CI_upper(model),
               coef_pvalue = get_coef_pvalue(model))
    }
    if(is.null(cox) & !is.null(rid)){ df <- get_df(rid) }
    if(!is.null(cox) & is.null(rid)){ df <- get_df(cox) }
    if(!is.null(cox) & !is.null(rid)){
        cox_df <- get_df(cox)
        rid_df <- get_df(rid)
        df <- bind_rows(cox_df, rid_df)
    }

    return(df)
}
