#' ---
#' title: "Second Modeling Run"
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
          #"age_strat", #Age strata from script 3
          "HSAGEIR", #Age in years at interview
          #"HSAITMOR", #Age in months at interview (screener)
          "DMAETHNR", #Ethnicity
          "HSSEX", #Biological sex
          "HAB1", #Would you say your health in general is excellent, very good, good, fair, or poor?
          #"HAB7", #During the past 12 months, about how many times have you been in a nursing or convalescent home?
          #"HAC1A", #Doctor ever told you had: arthritis
          #"HAF25", #Have you ever had a spell of marked loss of vision in one eye or pronounced blurring of vision in both eyes lasting more than 5 minutes?
          #"HAK9", #Times per night you get up to urinate
          #"HAL3", #Do you bring up phlegm on most days for 3 consecutive months or more during the year?
          #"HAN5JS", #Flour tortillas -times/month
          #"HAN1IS", #Cheese dishes - times/month
          #"HAN6ES", #Regular colas and sodas - times/month
          #"HAP2", #Do you use glasses, contacts, or both?
          "HAQ1", #Describe natural teeth: excellent...poor
          "HAR1", #Have you smoked 100+ cigarettes in life
          #"HAS1", #Past 2 wks, did you work at job/business
          #"HAS29", #Language you mainly speak at work/school
          "HAT10", #In the past month did you... do other dancing?
          #"HAT16", #In the past month, did you lift weights
          #"HAT18", #In the past month, any other exercises, sports
          "HAT2" #In the past month, did you jog or run
          #"HAV7R", #How long have you lived at this address? (weeks)
          #"HFA13", #Did --ever serve in the armed forces of the United States?
          #"HFF1", #Does anyone who lives here smoke cigarettes in the home?
          #"HFF13A", #Social Security or Railroad Retirement payments in family
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
             .y = seq(45), # number of random variables
             ~get_modelstats(seed=.x,
                             n_random_vars=.y,
                             datafile_path=path,
                             pick_vars=chsn))
}
#save an object with 1000 models
map_dfr(.x = seq(10), # number of seeds
        .f = ~map_sizes(seed=.x)) %>%
write_rds(here("dat/6-model-third-run.rds"))
