get_modelstats <- function(
                           seed,
                           n_random_vars,
                           datafile_path,
                           chosen_vars,
                           remove_vars
                           ){

    set.seed(seed)
    #remove variables,
    #move chosen variables to the beginning, and
    #sample from the variables to be randomized
    read_rds(here(datafile_path)) %>%
        select(-one_of(remove_vars)) %>%
        select(one_of(chosen_vars),
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
    r_cols <- (length(chosen_vars)+1):n_params
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

    cox <- svycoxph(update(form, rside1),
                    design = des, data = dat)

    rid <- svycoxph(update(form, rside2),
                    design = des, data = dat)

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
    model_list <- list(cox, rid)
    data_frame(seed = rep(seed,2),
               n_random_vars = n_random_vars,
               type = c('coxph', 'ridge'),
               aic = AIC(cox, rid)[,"AIC"],
               concordance =  future_map_dbl(model_list,
                                      get_con),
               hazard_ratio = future_map(model_list,
                                  get_HR),
               HR_CI_lower =  future_map(model_list,
                                  get_HR_CI_lower),
               HR_CI_upper =  future_map(model_list,
                                  get_HR_CI_upper),
               coef_pvalue =  future_map(model_list,
                                 get_coef_pvalue))
}
