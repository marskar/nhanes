
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


set.seed(seed)
#train <- sample(x = seq(nrow(dat)),
#               n_random_vars = round(nrow(dat)*.7))
# generate cox models without and with penalties

cox <- try(svycoxph(update(form,
                       paste("~ ", vrs)),
                design = des, data = dat))

rid <- try(svycoxph(update(form,
                       paste("~ ridge(", vrs2, ')')),
                design = des, data = dat))

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
model_list <- try(list(cox, rid))


try(data_frame(seed = rep(seed,2),
           n_random_vars = n_random_vars,
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

#save an object with 1000 models

map_seeds <- function(seed){
map2_dfr(.x = seed,
     .y = seq(10), #max number of variables to randomize
     get_modelstats)
}
map_dfr(seq(50), map_seeds) %>%
write_rds(here(paste0("dat/4-model-complete-cases.rds")))
#Variables included in the model
chosen_vars <- as.name(PERMTH_INT,
                   canc_mort,
                   SDPPSU6,
                   SDPSTRA6,
                   WTPFQX6)
random_vars
set.seed(seed)
#move PERMTH_INT and canc_mort to the beginning
#sample a tenth of the dataset columns
read_rds(here('dat/3-clean-complete-cases.rds')) %>%
  select(-SEQN) %>%
  select(chosen_vars
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
p = ncol(dat)
c = length(chosen_vars)
r = n_random_vars
# the total number of parameters (p)
# should equal the number of chosen (c) 
# plus the number of random (r) variables, i.e.
# p = c + r
if(r == 1 & p==c+1){
vrs <- as.name(names(dat)[p])
vrs2 <- as.name(names(dat)[p])
} else{
vrs <- as.name(paste(names(dat)[c:p],
                     collapse=' + '))
vrs2 <- as.name(paste(names(dat)[c:p],
                      collapse=', '))
}

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
         strata(HSAITMOR), #Stratify by age
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
vrs2 <- as.name(names(samp)[7])
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
