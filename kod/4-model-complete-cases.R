#!/usr/local/bin Rscript

args = commandArgs(trailingOnly=TRUE)

library(here)
library(readr)
library(dplyr)
library(tidyr)
library(survey)
library(purrr)

# obtain seed from command line argument
set.seed(seed = args[1])
#move PERMTH_INT and canc_mort to the beginning
#sample a tenth of the dataset columns
read_rds(here('dat/3-clean-complete-cases.rds')) %>%
  select(-SEQN) %>%
  select(PERMTH_INT,
         canc_mort,
         SDPPSU6,
         SDPSTRA6,
         WTPFQX6,
         everything()[sample(seq(ncol(.)),
                             round(ncol(.)/10))]) ->
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
vrs <- as.name(paste(names(samp)[6:ncol(samp)],
                     collapse=' + '))
vrs2 <- as.name(paste(names(samp)[6:ncol(samp)],
                      collapse=', '))

set.seed(seed = args[1])
train <- sample(x = seq(nrow(samp)),
               size = round(nrow(samp)*.7))
# generate cox models without and with penalties

cox <- svycoxph(update(form,
                       paste("~ ", vrs)),
                design = des, data = samp[train,])

rid <- svycoxph(update(form,
                       paste("~ ridge(", vrs2, ')')),
                design = des, data = samp[train,])

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
seed = args[1]

data_frame(seed = rep(seed,2),
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
                             get_coef_pvalue)) %>%
write_rds(here(paste0("obj/", seed, ".rds")))

