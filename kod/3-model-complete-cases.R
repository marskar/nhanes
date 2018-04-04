dat <- readr::read_rds('../dat/join-complete-cases.rds')
library(dplyr)
library(survey)
library(survminer)
# dim(dat)
# [1] 16404   645

#eval(vrs)
#deparse(substitute(vrs))

set.seed(12345)

train <- sample(x = seq(nrow(dat)),
               size = nrow(dat)*.7)
des <- svydesign(ids = ~SDPPSU6, strata = ~SDPSTRA6, weights = ~WTPFQX6, nest = TRUE, data = dat)
form1 <- as.formula(Surv(PERMTH_INT, canc_mort) ~ x1)
names(dat)

#need to remove variables with only one unique value
unique(dat[,14])

dat <- dat %>%
    select(-SEQN,
           -contains(match = 'STAT'),
           -CAUSEAVL,
           -UCOD_LEADING,
           -PERMTH_EXM
           -HSAGEU.x
           )

cols <- seq(ncol(dat)-1)

allvrs <- as.name(paste(names(dat)[100:110], collapse=' + '))
allform <- update(form1, paste("~ ", allvrs))
allfit <- svycoxph(formula = allform, design = des, data = dat[train,])
ridvrs <- as.name(paste(names(dat)[785:800], collapse=', '))
ridform <- update(form1, paste("~ ridge(", ridvrs, ')'))
ridfit <- svycoxph(formula = ridform, design = des, data = dat[train,])

#km <- svykm(formula = allform, design = des, data = dat[train,])
#plot(km)

#ggforest(ridfit)
#svyfit <- svycoxph(formula = Surv(PERMTH_INT, canc_mort) ~ ridge(GHP, TPP, CHP), design = des, data = dat[train,])
#pred <- predict(object = svyfit, newdata = dat[-train,], type = "expected")
#pred
#hist(pred)
#plot(survfit(svyfit))
#plot(pred)
#coef(svyfit)
#AIC(svyfit)

#summary(des)
#summary(svyfit)
#summary(pred)

#svymean(~canc_mort,design= des)
#svytotal(~canc_mort,design= des)


#form2
#form3 <- update(form1, paste("~ . + ridge(", vrs, ')'))
#form3
#form4 <- update(form1, paste("~ . + ridge(", vrs, ', scale = FALSE, theta = 1)'))
#form4
#class(ridfit)
#class(allfit)
#class( allfit ) <- "coxph"
#ggforest(allfit)
#ggforest(ridfit)

#library(survival)
#coxfit <- coxph(Surv(PERMTH_INT, canc_mort) ~ . + cluster(SDPPSU6) + strata(SDPSTRA6) - ELIGSTAT,   weight= WTPFHX6, method=c("efron"), data = dat)
#coxfit <- coxph(Surv(PERMTH_INT, canc_mort) ~ CHP + GHP + cluster(SDPPSU6) + strata(SDPSTRA6) - ELIGSTAT,   weight= WTPFHX6, method=c("efron"), data = dat, robust = TRUE)
#ggforest(coxfit, data = dat)
#names(dat)
#library(glmnet)
# https://cran.r-project.org/web/packages/glmnet/vignettes/Coxnet.pdf
#library(glmnetUtils)
# use formula notation in cv.glment function with glmnetUtils
# https://www.rdocumentation.org/packages/glmnetUtils/versions/1.1/topics/cv.glmnet
# x = x_train, y = y_train
#min(dat$PERMTH_INT)

#cv_fit <- cv.glmnet(Surv(time = PERMTH_INT,
                         #event = canc_mort) ~ . + cluster(SDPPSU6) + strata(SDPSTRA6) - ELIGSTAT,
          #family = "cox",
          #maxit = 1000,
          #weights = WTPFQX6,
          #data = dat)
#summary(clMort)
# unweighted and weighted?
#primary sample unit = PSU 
#PSU variable in NHANES
#psu
#dat$SDPPSU6
#strata variable in NHANES
#strata
#dat$SDPSTRA6
#weights variable in NHANES
#dat$WTPFQX6 
#use survey package svydesign function

#any(is.na(dat))
#any(is.na(dat))
#all(!is.na(dat))


#library(purrr)
#unique( map(dat, class) )
#dim(dat)

#all(!is.na(dat))
# [1] TRUE
#any(is.na(dat))
# [1] FALSE

#sum(is.na(dat$PERMTH_INT))
#sum(is.na(dat$SEQN))
#sum(is.na(dat$canc_mort))



#unique(dat$ELIGSTAT)
#unique(dat$MORTSTAT)
#unique(dat$CAUSEAVL)
#unique(dat$UCOD_LEADING)
#unique(dat$DIABETES)
#unique(dat$HYPERTEN)
#datetime
#SPPTIME
#PHPSNTI
#PHPDRTI
#PHPBEST

#HAX18A
#HAX19AS
#HAX18B
#HAX19BS
#HAX18C

#HAJ12 is still a string (not processed correctly)

#???
#DEPSTLC1
