library(dplyr)
readr::read_rds('dat/join.rds') %>%
  select_if(~ !any(is.na(.))) %>%
  readr::write_rds("dat/complete-cases.rds")

# length of weight variable == length( dat$WTPFQX6 )
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
