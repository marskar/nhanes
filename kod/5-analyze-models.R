library(readr)
library(here)
library(dplyr)
library(ggplot2)

dat <- read_csv(here("dat/model-data.csv"),
                col_names = FALSE,
                col_types = "iici") %>%
                rename(aic = X1,
                       concord = X2,
                       type = X3,
                       seed = X4)

dat %>%
    ggplot(aes(x = concord,
               y = aic)) +
           geom_point() +
           theme_minimal()

best_df <- dat %>%
    filter(concord > 80,
           aic  < 14480)
best_df

best_mod <- read_rds(here('obj/14452-82-lasmodel-83.rds'))

best_coef <- best_mod %>%
    coef %>%
    abs() %>%
    round(9) %>%
    sort(decreasing = TRUE)

    select()
