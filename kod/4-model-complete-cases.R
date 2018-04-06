library(here)
library(readr)
library(dplyr)
library(survey)
source(here("kod/frailty.controldf.R"))
source(here("kod/lasso.R"))

seed <- sample(seq(99), size = 1)
set.seed(seed = seed)


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
                               size=ncol(.)/10)])

# create survey design object
des <- svydesign(ids = ~SDPPSU6, strata = ~SDPSTRA6, weights = ~WTPFQX6, nest = TRUE, data = samp)
# create left side of equations
form <- as.formula(Surv(PERMTH_INT, canc_mort) ~ x1)
# create right sides of equations
vrs <- as.name(paste(names(samp)[3:ncol(samp)],
                     collapse=' + '))
vrs2 <- as.name(paste(names(samp)[3:ncol(samp)],
                      collapse=', '))

train <- sample(x = seq(nrow(samp)),
               size = nrow(samp)*.7)

coxfit <- update(form, paste("~ ", vrs)) %>%
svycoxph(design = des, data = samp[train,])

coxmse <- mean(x = coxfit$residuals^2)
coxmse
aic <- AIC(coxfit)[2]
pred <- survfit(coxfit, newdata = samp[-train,])
predict(object = coxfit, newdata = samp[-train,])
coxfitsumm <- summary(coxfit)

prediction_train<-predict(basic.coxph,train,type="risk")

prediction_test<-predict(object=basic.coxph,newdata=validate,type="risk")

# generate cox models without and with penalties
update(form, paste("~ ", vrs)) %>%
svycoxph(design = des, data = samp) %>%
write_rds(paste0("obj/cox-model", seed, ".rds"))

update(form, paste("~ ridge(", vrs2, ')')) %>%
svycoxph(design = des, data = samp) %>%
write_rds(paste0("obj/ridge-model", seed, ".rds"))

update(form, paste("~ lasso(", vrs2, ')')) %>%
svycoxph(design = des, data = samp) %>%
write_rds(paste0("obj/lasso-model", seed, ".rds"))

#update(form, paste("~ ridge(", vrs2, ', theta = 10 )'))
#update(form, paste("~ lasso(", vrs2, ', theta = 10 )'))
