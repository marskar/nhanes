library(readr)
library(here)
library(dplyr)
library(ggplot2)

dat <- read_rds(here("dat/4-model-complete-cases.rds"))
dat %>%
    head


dat %>%
    mutate(quad =
           as.factor(
           case_when(concordance > 78 & aic < 14480 ~ 1,
                     concordance > 78 & aic >= 14480 ~ 2,
                     concordance <= 78 & aic < 14480 ~ 3,
                     concordance <= 78 & aic >= 14480 ~ 4
                     ))
           ) ->
dat_quad

dat_quad %>%
    ggplot(aes(x = aic,
               y = concordance,
               colour = quad,
               shape = type)) +
           geom_point() +
           theme_minimal()

best_coef <- best_mod %>%
    coef %>%
    abs() %>%
    round(9) %>%
    sort(decreasing = TRUE)

    select()
