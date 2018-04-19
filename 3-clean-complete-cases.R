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
    select_if(~n_distinct(.) > 1)  %>%
    select(-findCorrelation(cor(.), cutoff=0.82)) %>%
    write_rds(here("dat/3-clean-complete-cases.rds"))
