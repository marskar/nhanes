dat <- readr::read_rds('../dat/median-imputed.rds')
glimpse(dat)
# use complete cases too!
length( dat$WTPFQX6 )
dat$WTPFQX6
library(survey)
library(dplyr)
vrs <- as.name(paste(names(dat)[10:20], collapse=', '))

#eval(vrs)
#deparse(substitute(vrs))

des<-svydesign(ids=~SDPPSU6, strata=~SDPSTRA6, weights=~WTPFQX6, nest = TRUE, data=dat)

form1 <- as.formula(Surv(PERMTH_INT, canc_mort) ~ x1)
form2 <- update(form1, paste("~ ridge(", vrs, ')'))
form2
form3 <- update(form1, paste("~ . + ridge(", vrs, ')'))
form3

svyfit <- svycoxph(formula = form2, design = des, data = dat)

svycoxph(formula = form2, design = des, data = dat)

svyfit <- svycoxph(formula = Surv(PERMTH_INT, canc_mort) ~ ridge(GHP, TPP, CHP), design = des, data = dat)
svyfit <- svycoxph(formula = Surv(PERMTH_INT, canc_mort) ~ ridge(GHP, TPP, CHP), design = des, data = dat)
summary(des)
summary(svyfit)

svymean(~canc_mort,design= des)
svytotal(~canc_mort,design= des)

library(survival)
clMort <- coxph(Surv(PERMTH_INT, canc_mort) ~ . + cluster(SDPPSU6) + strata(SDPSTRA6) - ELIGSTAT,   weight= WTPFHX6, method=c("efron"), data = dat) 
names(dat)
#library(glmnet)
# https://cran.r-project.org/web/packages/glmnet/vignettes/Coxnet.pdf
#library(glmnetUtils)
# use formula notation in cv.glment function with glmnetUtils
# https://www.rdocumentation.org/packages/glmnetUtils/versions/1.1/topics/cv.glmnet
# x = x_train, y = y_train
min(dat$PERMTH_INT)

#cv_fit <- cv.glmnet(Surv(time = PERMTH_INT,
                         #event = canc_mort) ~ . + cluster(SDPPSU6) + strata(SDPSTRA6) - ELIGSTAT,
          #family = "cox",
          #maxit = 1000,
          #weights = WTPFQX6,
          #data = dat)
summary(clMort)
fitcox<-svycoxph(Surv(dat$PERMTH_INT, dat$canc_mort)~x, design=des)
weight
stset data
# unweighted and weighted?
primary sample unit = PSU 
PSU variable in NHANES
strata variable in NHANES
weights variable in NHANES

use survey package svydesign function
create an object which I can feed into svycoxph()
#psu
dat$SDPPSU6
#strata
dat$SDPSTRA6

length of weight variable == length( dat$WTPFQX6 )
any(is.na(dat))
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
