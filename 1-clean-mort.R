#' ---
#' title: "Clean NHANES linked NDI mortality data"
#' author: "Martin Skarzynski"
#' date: "`r Sys.Date()`"
#' ---

## read in data processed using sas and clean w/ dplyr ####
library(here)
library(dplyr)
library(readr)
read_csv(here("dat/mort.csv")) %>%
    select(-starts_with("MORTSRCE")) %>%
    filter(!is.na(UCOD_LEADING) & !is.na(PERMTH_INT)) %>%
    mutate_at(.vars = vars(-starts_with("PERMTH_"),
                           -SEQN),
              .funs = funs(as.factor)) %>%
    write_rds(here("dat/1-clean-mort.rds"))

#names(mort)
#length(mort)
#glimpse(mort)

#any(is.na(mort$PERMTH_INT))
#all(is.na((select(mort, contains('WGT')))))
#all(is.na((select(mort, contains('MORTSRCE_DCL')))))
#unique(select(mort, -contains('MORTSRCE')))

#library(purrr, help)
#map(mort, nlevels)
#nlevels(mort)
