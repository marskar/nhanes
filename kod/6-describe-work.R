#' ---
#' title: "Describe First Modeling Run"
#' author: "Martin Skarzynski"
#' date: "`r Sys.Date()`"
#' ---
library(dplyr)
## read in data processed using sas ####
adult <- readr::read_csv(here::here("dat/adult.csv"))
mort <- readr::read_rds(here::here("dat/1-clean-mort.rds"))
exam <- readr::read_csv(here::here("dat/exam.csv"))
lab <- readr::read_csv(here::here("dat/lab.csv"))

## change SEQN to numeric in all datasets read in from csv
adult$SEQN <- as.numeric(adult$SEQN)
exam$SEQN <- as.numeric(exam$SEQN)
lab$SEQN <- as.numeric(lab$SEQN)

#levels(dat$UCOD_LEADING)

## Join all datasets, remove baseline cancer cases
## Create a cancer death variable
## Convert all character variables to numeric
## Select only columns with less than 10% NAs
## write out an RDS file
left_join(x = mort, y = adult, by = "SEQN") %>%
left_join(x = ., y = exam, by = "SEQN") %>%
left_join(x = ., y = lab, by = "SEQN") %>%
filter(HAC1N==2 &
       HAC1O==2 &
       !is.na(SDPPSU6) &
       !is.na(SDPSTRA6) &
       !is.na(WTPFQX6)) %>%
mutate(canc_mort =
       if_else(UCOD_LEADING ==
               'Malignant neoplasms (C00-C97)',
               true = 1, false = 0)) ->
dat


# how many exposures 1
ncol(dat)-dat %>%
    select(starts_with("PERM"),
           starts_with("SDP"),
           starts_with("canc_"),
           starts_with("UCOD"),
           contains("STAT"),
           starts_with("WTP"),
           starts_with("SEQ")) %>%
ncol()

# how many exposures final
dat <- readr::read_rds(here::here('dat/3-clean-complete-cases.rds'))
ncol(dat)-dat %>%
    select(starts_with("PERM"),
           starts_with("SDP"),
           starts_with("canc_"),
           starts_with("UCOD"),
           contains("STAT"),
           starts_with("SEQ")) %>%
#how many cancer deaths
sum(dat$PERM_INTH)
