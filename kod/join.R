adult <- readr::read_csv("dat/adult.csv")
mort <- readr::read_csv("dat/mort.csv")
library('dplyr')
amor <- left_join(x = adult, y = mort, by = "SEQN") %>%
    filter(HAC1N==2 & HAC1O==2 & !is.na(PERMTH_INT)) %>%
    mutate(canc_mort = if_else(UCOD_LEADING=='002', true = 1, false = 0))

readr::write_csv(amor, "dat/join-adult-mort.csv")
