library(readr)
library(dplyr)
library(survey)
source("../frailty.controldf.R")
source("../lasso.R")

seed <- sample(seq(99), size = 1)
set.seed(seed = seed)

#train <- sample(x = seq(nrow(dat)),
#               size = nrow(dat)*.7)

#move PERMTH_INT and canc_mort to the beginning
#sample a tenth of the dataset columns
samp <- read_rds('../dat/clean-complete-cases.rds') %>%
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

# generate cox models without and with penalties
update(form, paste("~ ", vrs)) %>%
svycoxph(design = des, data = samp) %>%
write_rds(paste0("../dat/cox-model", seed, ".rds"))

update(form, paste("~ ridge(", vrs2, ')')) %>%
svycoxph(design = des, data = samp) %>%
write_rds(paste0("../dat/ridge-model", seed, ".rds"))

update(form, paste("~ lasso(", vrs2, ')')) %>%
svycoxph(design = des, data = samp) %>%
write_rds(paste0("../dat/lasso-model", seed, ".rds"))

#update(form, paste("~ ridge(", vrs2, ', theta = 10 )'))
#update(form, paste("~ lasso(", vrs2, ', theta = 10 )'))
