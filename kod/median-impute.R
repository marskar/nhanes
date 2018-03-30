library(dplyr)
dat <- readr::read_csv("../dat/join.csv") 
length( dat$WTPFQX6 )
dat$WTPFQX6 <- as.numeric( dat$WTPFQX6 )

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

glimpse(dat)

dat$DMPFSEQ.x <- as.numeric(dat$DMPFSEQ.x)

dat$WTPFQX6 <- as.numeric( dat$WTPFQX6 )
dat[] <- as.numeric( dat$WTPFQX6 )
names(dat)
ids <- c()
unique(dat$ELIGSTAT)
unique(dat$MORTSTAT)
unique(dat$CAUSEAVL)
unique(dat$UCOD_LEADING)
unique(dat$DIABETES)
unique(dat$HYPERTEN)
unique(dat$DODQTR)
unique(dat$DODYEAR)

unique(dat$MORTSRCE_NDI)
unique(dat$MORTSRCE_NDI)
unique(dat$MORTSRCE_CMS)
unique(dat$MORTSRCE_SSA)
unique(dat$MORTSRCE_DC)
unique(dat$MORTSRCE_DCL)

unique(dat$MPPC1)
unique(dat$HAJ12)

dat = mutate_each(dat, funs(as.numeric), ids)


datetime
SPPTIME
PHPSNTI
PHPDRTI
PHPBEST

HAX18A
HAX19AS
HAX18B
HAX19BS
HAX18C

HAJ12 is still a string (not processed correctly)

???
DEPSTLC1
