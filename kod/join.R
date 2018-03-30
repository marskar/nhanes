adult <- readr::read_csv("dat/adult.csv")
mort <- readr::read_csv("../dat/mort.csv")
exam <- readr::read_csv("dat/exam.csv")
lab <- readr::read_csv("dat/lab.csv")

adult$SEQN <- as.numeric(adult$SEQN)
mort$SEQN <- as.numeric(mort$SEQN)
exam$SEQN <- as.numeric(exam$SEQN)
lab$SEQN <- as.numeric(lab$SEQN)

library('dplyr')
amel <- left_join(x = adult, y = mort, by = "SEQN") %>%
            left_join(x = ., y = exam, by = "SEQN") %>%
            left_join(x = ., y = lab, by = "SEQN") %>%
    filter(HAC1N==2 & HAC1O==2 & !is.na(PERMTH_INT)) %>%
    mutate(canc_mort = if_else(UCOD_LEADING=='002', true = 1, false = 0))

readr::write_csv(amel, "dat/join.csv")

glimpse(mort)
