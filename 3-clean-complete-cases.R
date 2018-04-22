#' ---
#' title: "Clean Complete Cases"
#' author: "Martin Skarzynski"
#' date: "`r Sys.Date()`"
#' ---
library(here)
library(readr)
library(dplyr)
library(caret)
#remove non-numeric variables
#remove variables with more than one unique value
#remove highly correlated variables

dat <- read_rds(here('dat/2-join-complete-cases.rds')) %>%
    select_if(is.numeric) %>%
    select_if(~n_distinct(.) > 1) %>%
    select(-starts_with("WTPQ"),
           -starts_with("WTPX"),
           -starts_with("WTPFE"),
           -starts_with("WTPFH"),
           -HAN9, #remove age variables
           -HAQ7,
           -HAT29,
           -HAJ0,
           -HAK12,
           -HAM7,
           -HSAITMOR,
           -contains(".y"),
           -contains(".x"),
           -SEQN,
           -PERMTH_EXM) %>%
    select(-findCorrelation(cor(.), cutoff=0.9)) %>%
    mutate(age_strat = as.factor(case_when(HSAGEIR>=18 &
                                           HSAGEIR<=29 ~ 1,
                                           HSAGEIR>=30 &
                                           HSAGEIR<=41 ~ 2,
                                           HSAGEIR>=42 &
                                           HSAGEIR<=62 ~ 3,
                                           HSAGEIR>=63 &
                                           HSAGEIR<=90 ~ 4
         ))) %>%
    write_rds(here("dat/3-clean-complete-cases.rds"))
