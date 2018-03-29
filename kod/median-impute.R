library(dplyr)

impute_median <- function(x){
  ind_na <- is.na(x)
  x[ind_na] <- median(x[!ind_na])
  as.numeric(x)
}

dat <- readr::read_csv("dat/join.csv") %>%
  select_if(is.numeric) %>%
  mutate_all(impute_median)
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

readr::write_csv(dat, "dat/median-imputed.csv")
