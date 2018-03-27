adult <- readr::read_csv("dat/adult.csv")
mort <- readr::read_csv("dat/mort.csv")
library('dplyr')
amor <- left_join(x = adult, y = mort, by = "SEQN")
dim(amor)

amor2 <- amor %>%
    filter(HAC1N==2 & HAC1O==2) %>%
    mutate(canc_mort = if_else(UCOD_LEADING=='002', true = 1, false = 0))
table(amor2$canc_mort)

min(amor2$HSAITMOR)
all(amor2$HAC1N==2)
all(amor2$HAC1O==2)
dim(amor2)
names(amor2)
unique(amor2$UCOD_LEADING)
canc_mort <- amor2 %>%
    filter(UCOD_LEADING=='002')
dim(canc_mort)
