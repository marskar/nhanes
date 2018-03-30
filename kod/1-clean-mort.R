## read in data processed using sas and clean w/ dplyr ####
library(dplyr)
mort <- readr::read_csv("dat/mort.csv") %>%
    select(-starts_with("MORTSRCE")) %>%
    mutate_at(.vars = vars(-starts_with("PERMTH_"),
                           -SEQN),
              .funs = funs(as.factor))

readr::write_rds(mort, "dat/mort.rds")

#names(mort)
#length(mort)
#glimpse(mort)

#all(is.na((select(mort, contains('WGT')))))
#all(is.na((select(mort, contains('MORTSRCE_DCL')))))
#unique(select(mort, -contains('MORTSRCE')))

#library(purrr, help)
#map(mort, nlevels)
#nlevels(mort)
