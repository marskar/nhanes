library(readr)
library(here)
library(dplyr)
library(ggplot2)
library(purrr)

#read in dataset created by script 4
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

# Figure 1
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

#define function to flatten dat_quad
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

#flatten dat_quad
df_coef <- map_dfr(seq(4), get_dfs)
#remove ridge from name
df_coef$name <- gsub("ridge\\(|\\)", "", df_coef$name)

# Figure 2
df_coef %>%
    select(-starts_with("HR_CI")) %>%
    filter(!between(HR, .99, 1.01)) %>%
    mutate(coef_pvalue = if_else(near(coef_pvalue, 0),
                                 coef_pvalue+0.1^17,
                                 coef_pvalue)) %>%
    ggplot(aes(x = log2(HR),
               y = -log10(coef_pvalue),
               colour = as.factor(quad))) +
           labs(colour = "Quadrant",
                x = 'log2 Hazard Ratio',
                y = '-log10 p-value') +
           geom_point(alpha = 0.75) +
           guides(colour = guide_legend(override.aes = list(alpha = 1))) +
           geom_text(aes(label=name),
                     alpha = 0.75,
                     vjust = 1.2,
                     show.legend = FALSE,
                     check_overlap = TRUE) +
           theme_minimal() +
           theme(plot.margin = margin(t = -15))


#filter out p-values greater than .1^10
df_sig <- df_coef %>%
    select(-starts_with("HR_CI")) %>%
    filter(coef_pvalue<.1^10)

#obtain the order by count for name
ord <- df_sig %>%
    count(name) %>%
    arrange(n) %>%
    select(name)

#create name factor variable with levels ordered by count
df_sig$ord_name <- factor(df_sig$name, levels=ord$name)

# Figure 3
df_sig %>%
    mutate_if(is.integer, as.factor) %>%
    ggplot(aes(ord_name,fill=quad)) +
    geom_bar(position = position_stack(reverse = TRUE)) +
    coord_flip() +
                  theme_minimal() +
    theme(legend.position = "top") +
                  labs(fill = "Quadrant",
                       x = 'Feature',
                       y = 'Count')
