#!/usr/local/bin Rscript

args = commandArgs(trailingOnly=TRUE)

library(here)
library(readr)
library(dplyr)
library(tidyr)
library(survey)
source(here("kod/frailty.controldf.R"))
source(here("kod/lasso.R"))

#set.seed(seed = args[1])
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
seed = args[1]
# generate cox models without and with penalties

cox <- svycoxph(update(form,
                       paste("~ ", vrs)),
                design = des, data = samp)

rid <- svycoxph(update(form,
                       paste("~ ridge(", vrs2, ')')),
                design = des, data = samp)

las <-  svycoxph(update(form,
                       paste("~ lasso(", vrs2, ')')),
                design = des, data = samp)

get_con = function(x) round(summary(x)$concordance[1]*100)

seed=1

data_frame(type = c('coxph', 'ridge', 'lasso'),
           seed = rep(seed,3),
           aic = AIC(cox, rid, las)[,2],
           concordance = c(get_con(cox),
                           get_con(rid),
                           get_con(las)),
           betas = c(list(coef(cox)),
                     list(coef(rid)),
                     list(coef(las)))) ->
df

%>%
write_rds(here(paste0("obj/",
                 seed,
                 ".rds")))
library('lime')
signif(summary(cox)$coef[,1], digits=2)
signif(summary(cox)$coef[,2], digits=2)

summary(cox)$wald

function(x){
  x <- summary(x)
  pval<-signif(x$wald["pvalue"],
                  digits=2)
  wald<-signif(x$wald["test"],
                    digits=2)
  beta<-signif(x$coef[,1],
               digits=2);#coeficient beta
  HR <-signif(x$coef[,2],
              digits=2);#exp(beta)
  HR_CI_lower <- signif(x$conf.int[,"lower .95"], 2)
  HR_CI_upper <- signif(x$conf.int[,"upper .95"],2)
  HR_CI <- paste0(HR,
               " (",
               HR_CI_lower,
               "-",
               HR_CI_upper,
               ")")
  res<-c(beta,
         HR,
         wald,
         pval)
  names(res)<-c("beta",
                "HR (95% CI for HR)",
                "wald test", 
                "p value")
  return(res) } ->
get_modstats
  #return(exp(cbind(coef(x),confint(x))))
#
#signif(summary(cox)$wald["pvalue"], digits=2)
#summary(cox)$p.value
#update(form, paste("~ ridge(", vrs2, ', theta = 10 )'))
#update(form, paste("~ lasso(", vrs2, ', theta = 10 )'))
