library(readr)
library(here)
library(dplyr)
library(ggplot2)

dat <- read_rds(here("dat/4-model-complete-cases.rds"))
dat %>%
    head

dat %>%
    ggplot(aes(x = aic,
               y = concordance)) +
           geom_point() +
           theme_minimal()

best_df <- dat %>%
    filter(concordance > 80,
           aic  < 14460)
best_df

best_coef

best_mod <- read_rds(here('obj/14452-81-ridmodel-56.rds'))

best_coef <- best_mod %>%
    coef %>%
    abs() %>%
    round(9) %>%
    sort(decreasing = TRUE)

    select()
