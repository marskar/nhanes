library(readr)
library(here)
library(dplyr)
library(ggplot2)
library(purrr)

dat_quad <-
    read_rds(here("dat/4-model-complete-cases.rds")) %>%
    mutate(quad =
           as.factor(
           case_when(concordance > 78 & aic < 14480 ~ 1,
                     concordance > 78 & aic >= 14480 ~ 2,
                     concordance <= 78 & aic < 14480 ~ 3,
                     concordance <= 78 & aic >= 14480 ~ 4
                     ))
           )

dat_quad %>%
    ggplot(aes(x = aic,
               y = concordance,
               colour = quad,
               shape = type)) +
           geom_point() +
           theme_minimal() +
           labs(colour = "Quadrant",
                x = 'Akaike Information Criterion',
                y = 'Concordance',
                shape = "Model Type")

get_dfs <- function(quadrant) {
dat <- dat_quad %>%
        filter(quad == quadrant) %>%
            select(starts_with('h'),
                   coef_pvalue)

data_frame(name = names(flatten(dat[[1]])),
           HR = flatten_dbl(dat[[1]]),
           HR_CI_lower = flatten_dbl(dat[[2]]),
           HR_CI_upper = flatten_dbl(dat[[3]]),
           coef_pvalue = flatten_dbl(dat[[4]]),
           quad = rep(quadrant,
                      length(flatten(dat[[1]])))
           )
}

df_coef <- map_dfr(seq(4), get_dfs)
0.1^323
df_coef %>%
    select(-starts_with("HR_CI")) %>%
    filter(!between(HR, .9, 1.1)) %>%
    mutate(coef_pvalue = if_else(near(coef_pvalue, 0),
                                 coef_pvalue+0.1^17,
                                 coef_pvalue)) %>%
#    arrange(coef_pvalue)
    ggplot(aes(x = log2(HR),
               y = -log10(coef_pvalue),
               colour = as.factor(quad))) +
           labs(colour = "Quadrant",
                x = 'log2 Hazard Ratio',
                y = '-log10 p-value') +
           geom_point(alpha = 1) +
           geom_text(aes(label=name),
                     alpha = 0.75,
                     vjust = 1.2,
                     check_overlap = TRUE) +
           theme_minimal() +
           theme(plot.margin = margin(t = -15))

#df_coef %>%
       #    select(-starts_with("HR_CI")) %>%
       #    group_by(name, quad) %>%
       #    summarise(mean_HR = mean(HR),
       #              mean_pval = mean(coef_pvalue),
       #              n = n()) %>%
       #    ggplot(aes(x = log2(mean_HR),
       #               y = -log10(mean_pval),
       #               colour = as.factor(quad),
       #               size = n,
       #               label = name)) +
       #           geom_point(alpha = 0.5) +
       #           theme_minimal() +
       #           labs(colour = "Quadrant",
       #                x = 'log2 Hazard Ratio',
       #                y = '-log10 p-value') +
       #           guides(colour = guide_legend(override.aes = list(alpha = 1))) +
       #           geom_text()

