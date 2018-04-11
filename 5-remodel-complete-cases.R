#!/usr/local/bin Rscript

args = commandArgs(trailingOnly=TRUE)

library(here)
library(readr)
library(dplyr)
library(tidyr)
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
vrs <- as.name(paste(names(samp)[6:ncol(samp)],
                     collapse=' + '))
vrs2 <- as.name(paste(names(samp)[6:ncol(samp)],
                      collapse=', '))

set.seed(seed = args[1])
train <- sample(x = seq(nrow(samp)),
               size = round(nrow(samp)*.7))
seed = args[1]
# generate cox models without and with penalties
samp %>%
    group_by(PERMTH_INT,
           canc_mort,
           SDPPSU6,
           SDPSTRA6,
           WTPFQX6) %>%
    nest() %>%
    mutate(cox = map(data,
                     ~
svycoxph(update(form,
                paste("~ ", vrs)),
        design = des,
        data = .x)))
# initialize dataframe
seed = 1

models <- data_frame(type = c('coxph', 'ridge', 'lasso'),
                     seed = rep(seed,3),
                     fit = c(list( cox ),
                             list( rid ),
                             list( las ))
models %>%
    mutate(
    aic = map_dbl(fit, ~ AIC(.x)[["(Intercept)"]]),
    concordance = map_dbl(fit, ~ coef(.x)[["yr1952"]])
  )

                     ,
                     aic = c(AIC( cox ),
                             AIC( rid ),
                             AIC( las ))) %>%
mutate(concordance = round(summary(.)$concordance[1]*100)))
models %>%
    mutate_if(type == "cox", fit = 1)
models
models["fit"] <-
    c(list( cox ), list( cox ),list( cox )) %>%
length()
cox <- svycoxph(update(form, paste("~ ", vrs)), design = des, data = samp)
update(form, paste("~ ", vrs)) %>%
svycoxph(update(form, paste("~ ", vrs)),
         design = des,
         data = samp[train,]) %>%
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
