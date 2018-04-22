#' ---
#' title: "Model Complete Cases"
#' author: "Martin Skarzynski"
#' date: "`r Sys.Date()`"
#' ---

#+ setup, include=FALSE
library(knitr)
opts_chunk$set(message = FALSE, warnings = FALSE)

#+ libs
library(here)
library(readr)
library(dplyr)
library(survey)
library(purrr)
source("kod/get_modelstats.R")

#+ chosen-variables
#Variables to be included in the model
chsn <- c(
          "PERMTH_INT", #time
          "canc_mort", #event
          "SDPPSU6", #PSU
          "SDPSTRA6", #Stratification
          "WTPFQX6", #Weights
          "age_strat" #Age strata from script 3
          #"HSAGEIR" #Age in years at interview
         )

#+ remove-variables
#Variables to be removed from the model
remv <- c(
          "HAN9", #remove age variables
          "HAQ7",
          "HAT29",
          "HAJ0"
         )
path <- 'dat/3-clean-complete-cases.rds'

#+ map-models
# the modelstats function returns a dataframe
# after taking in the following arguments
#seed,
#n_random_vars,
#datafile_path,
#chosen_vars,
#remove_vars
map_sizes <- function(seed){
    map2_dfr(.x = seed,
             .y = seq(50), # number of random variables
             ~get_modelstats(seed=.x,
                             n_random_vars=.y,
                             datafile_path=path,
                             pick_vars=chsn))
}
#save an object with 1000 models
map_dfr(.x = seq(100), # number of seeds
        .f = ~map_sizes(seed=.x)) %>%
write_rds(here("dat/4-model-first-run.rds"))

