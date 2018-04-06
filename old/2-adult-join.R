library(dplyr)
## read in data processed using sas ####
adult <- readr::read_csv("dat/adult-merge.csv")
mort <- readr::read_rds("dat/mort.rds")

## change SEQN to numeric in all datasets read in from csv
adult$SEQN <- as.numeric(adult$SEQN)

#levels(dat$UCOD_LEADING)

## Join all datasets, remove baseline cancer cases
## Create a cancer death variable
## Convert all character variables to numeric
## Select only columns with less than 10% NAs
## write out an RDS file
left_join(x = mort, y = adult, by = "SEQN") %>%
filter(HAC1N==2 &
       HAC1O==2 &
       !is.na(SDPPSU6) &
       !is.na(SDPSTRA6) &
       !is.na(WTPFQX6)) %>%
mutate(canc_mort =
       if_else(UCOD_LEADING ==
               'Malignant neoplasms (C00-C97)',
               true = 1, false = 0)) %>%
mutate_if(.predicate = is.character,
          .funs = as.numeric) %>%
select(which(colMeans(is.na(.))==0)) %>%
readr::write_rds("dat/2-adult-join.rds")


#warnings()
## 15 variables (HAJ12, HAX18A, HAX18B, HAX18C, HAZA1CC, DEPSTLC1, DEPSTLC2, DEPSTLC3, DEPSTLC4, DEPSTLC5, DEPSTLC6, SPPTIME, PHPSNTI, PHPDRTI, PHPBEST) could not be converted to numeric, and instead were coerced to NAs
## 3 time variables coerced into NA (PHPSNTI, PHPDRTI, PHPBEST)
## Consider converting these 3 to a different class later
