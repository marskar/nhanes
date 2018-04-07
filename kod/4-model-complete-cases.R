#!/usr/local/bin Rscript

args = commandArgs(trailingOnly=TRUE)

library(here)
library(readr)
library(dplyr)
library(survey)
source(here("kod/frailty.controldf.R"))
source(here("kod/lasso.R"))

set.seed(seed = args[1])
#move PERMTH_INT and canc_mort to the beginning
#sample a tenth of the dataset columns
samp <- read_rds(here('dat/3-clean-complete-cases.rds')) %>%
    select(-SEQN) %>%
    select(PERMTH_INT,
           canc_mort,
           SDPPSU6,
           SDPSTRA6,
           WTPFQX6,
           everything()[sample(seq(ncol(.)),
                               size=round(ncol(.)/10))])

# create survey design object
des <- svydesign(ids = ~SDPPSU6, strata = ~SDPSTRA6, weights = ~WTPFQX6, nest = TRUE, data = samp)
# create left side of equations
form <- as.formula(Surv(PERMTH_INT, canc_mort) ~ x1)
# create right sides of equations
vrs <- as.name(paste(names(samp)[3:ncol(samp)],
                     collapse=' + '))
vrs2 <- as.name(paste(names(samp)[3:ncol(samp)],
                      collapse=', '))

set.seed(seed = args[1])
train <- sample(x = seq(nrow(samp)),
               size = round(nrow(samp)*.7))
seed = args[1]
# generate cox models without and with penalties
update(form, paste("~ ", vrs)) %>%
svycoxph(design = des, data = samp[train,]) %>%
write_rds(here(paste0("obj/",
                 round(AIC(.)[2]),
                 "-",
                 round(summary(.)$concordance[1]*100),
                 "-",
                 "coxmodel",
                 "-",
                 seed,
                 ".rds")))

update(form, paste("~ ridge(", vrs2, ')')) %>%
svycoxph(design = des, data = samp[train,]) %>%
write_rds(here(paste0("obj/",
                 round(AIC(.)[2]),
                 "-",
                 round(summary(.)$concordance[1]*100),
                 "-",
                 "ridmodel",
                 "-",
                 seed,
                 ".rds")))

update(form, paste("~ lasso(", vrs2, ')')) %>%
svycoxph(design = des, data = samp[train,]) %>%
write_rds(here(paste0("obj/",
                 round(AIC(.)[2]),
                 "-",
                 round(summary(.)$concordance[1]*100),
                 "-",
                 "lasmodel",
                 "-",
                 seed,
                 ".rds")))

#update(form, paste("~ ridge(", vrs2, ', theta = 10 )'))
#update(form, paste("~ lasso(", vrs2, ', theta = 10 )'))
