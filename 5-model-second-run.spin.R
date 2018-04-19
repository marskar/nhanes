#' ---
#' title: "Second Modeling Run"
#' author: "Martin Skarzynski"
#' date: "`r Sys.Date()`"
#' ---

library(here)
library(readr)
library(dplyr)
library(tidyr)
library(survey)
library(purrr)


# this function takes in two integers as an argument
# this function returns a dataframe
get_modelstats <- function(seed, size){

    set.seed(seed)
    #move PERMTH_INT and canc_mort to the beginning
    #sample a tenth of the dataset columns
    read_rds(here('dat/3-clean-complete-cases.rds')) %>%
      select(-SEQN,
             -HAN9, #remove age variables
             -HAQ7,
             -HAT29,
             -HAJ0,
	     -WTPXRP2,
	     -starts_with("WTPQRP")
             ) %>%
      select(PERMTH_INT, #person time in months
             canc_mort, #event
             SDPPSU6, #PSU
             SDPSTRA6, #Stratification
             WTPFQX6, #Weights
             DMAETHNR, #Ethnicity
             HAT16, #In the past month, did you lift weights
             HAK9, # times per night you get up to urinate
             HSAITMOR, #Age in months at interview (screener)
             HAQ1, #Describe natural teeth: excellent...poor
             HAR1, #Have you smoked 100+ cigarettes in life
             HAT2, #In the past month, did you jog or run
             HAT18, #In the past month, any other exercises, sports
             HAB1, #Would you say your health in general is excellent, very good, good, fair, or poor?
             HSSEX, #Biological sex
             everything()[sample(seq(ncol(.)),
                                 round(size))]) ->
    samp

    # create survey design object
    svydesign(ids = ~SDPPSU6,
              strata = ~SDPSTRA6,
              weights = ~WTPFQX6,
              nest = TRUE,
              data = samp) ->
    des

    # create left side of equations
    form <- as.formula(Surv(PERMTH_INT, canc_mort) ~ x1)
    # create right sides of equations
    if(size == 1 & ncol(samp)==7){
    vrs <- as.name(names(samp)[7])
    vrs <- as.name(names(samp)[7])
    } else{

    vrs <- as.name(paste(names(samp)[6:ncol(samp)],
                         collapse=' + '))
    vrs2 <- as.name(paste(names(samp)[6:ncol(samp)],
                          collapse=', '))
    }

    set.seed(seed)
    #train <- sample(x = seq(nrow(samp)),
    #               size = round(nrow(samp)*.7))
    # generate cox models without and with penalties

    cox <- try(svycoxph(update(form,
                           paste("~ ", vrs)),
                    design = des, data = samp))

    rid <- try(svycoxph(update(form,
                           paste("~ ridge(", vrs2, ')')),
                    design = des, data = samp))

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
    model_list <- try(list(cox,rid))


    try(data_frame(seed = rep(seed,2),
               size = size,
               type = c('coxph', 'ridge'),
               aic = AIC(cox, rid)[,"AIC"],
               concordance =  map_dbl(model_list,
                                      get_con),
               hazard_ratio = map(model_list,
                                  get_HR),
               HR_CI_lower =  map(model_list,
                                  get_HR_CI_lower),
               HR_CI_upper =  map(model_list,
                                  get_HR_CI_upper),
               coef_pvalue =  map(model_list,
                                 get_coef_pvalue)))
}

#save an object with 800 models

map_sizes <- function(seed){
map2_dfr(.x = seed,
         .y = seq(40),
         get_modelstats)
}
map_dfr(seq(10), map_sizes) %>%
write_rds(here(paste0("dat/5-model-second-run.rds")))

