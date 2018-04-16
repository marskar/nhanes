library(readr)
library(here)
library(dplyr)
library(ggplot2)
library(purrr)

#define function needed to calculate median model stats
get_median <- function(x, model_type, model_stat){
    model_type <- deparse(substitute(model_type))
    model_stat <- enquo(model_stat)
    x %>%
        select(type, !!model_stat) %>%
        group_by(type) %>%
        summarise(model_median = median(!!model_stat)) %>%
        filter(type == model_type)%>%
        select(model_median) %>%
        as.numeric
}
glimpse(dat_quad)
get_median(dat_quad, coxph, aic)
get_median(dat_quad, ridge, aic)
get_median(dat_quad, coxph, con)
get_median(dat_quad, ridge, con)
#read in dataset created by script 4
dat_quad <- read_rds(here("dat/6-model-diff-sizes.rds")) %>%
    rename(con = concordance) %>%
    mutate(quad =
           as.factor(
           case_when(type == "ridge" &
                     con > get_median(.,
                                      ridge,
                                      con) &
                     aic < get_median(.,
                                      ridge,
                                      aic) ~ "Best Ridge Models",
                     type == "coxph" &
                     con > get_median(.,
                                       coxph,
                                       con) &
                     aic < get_median(.,
                                      coxph,
                                      aic) ~ "Best Cox Models",
                     type == "ridge" &
                     con > get_median(.,
                                      ridge,
                                      con) &
                     aic >= get_median(.,
                                      ridge,
                                      aic) ~ "High Concordance, High AIC Ridge Models",
                     type == "coxph" &
                     con > get_median(.,
                                      coxph,
                                      con) &
                     aic >= get_median(.,
                                      coxph,
                                      aic) ~  "High Concordance, High AIC Cox Models",
                     type == "ridge" &
                     con <= get_median(.,
                                      ridge,
                                      con) &
                     aic < get_median(.,
                                      ridge,
                                      aic) ~  "Low Concordance, Low AIC Ridge Models",
                     type == "coxph" &
                     con <= get_median(.,
                                      coxph,
                                      con) &
                     aic < get_median(.,
                                      coxph,
                                      aic) ~   "Low Concordance, Low AIC Cox Models",
                     type == "ridge" &
                     con <= get_median(.,
                                      ridge,
                                      con) &
                     aic >= get_median(.,
                                      ridge,
                                      aic) ~ "Worst Ridge Models",
                     type == "coxph" &
                     con <= get_median(.,
                                      coxph,
                                      con) &
                     aic >= get_median(.,
                                      coxph,
                                      aic) ~ "Worst Cox Models"
                     ))
           )
table(dat_quad$quad)
table(dat_quad$type)
# 
#  1  2  3  4 
# 51 51 49 49 

dat_quad %>%
    group_by(type, quad) %>%
    summarise(n=n())

sum( table(dat_quad$quad) )
# [1] 200

# Figure 1
dat_quad %>%
    ggplot(aes(x = aic,
               y = con,
               size = size,
               colour = quad)) +
geom_point(aes(shape = factor(type)),
           #size = 3,
           stroke = 1) +
scale_shape(solid = FALSE) +
           theme_minimal() +
           labs(
                x = 'Akaike Information Criterion',
                y = 'Concordance',
                size = "Number of Variables",
                shape = "Model Type",
                colour = "Description")

ggsave(here("img/1-quad.pdf"))
ggsave(here("img/1-quad.png"))

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
           geom_point(alpha = 0.75,
                      size = 1,
                      stroke = 1) +
           guides(colour = guide_legend(override.aes = list(alpha = 1))) +
           geom_text(aes(label=name),
                     alpha = 0.75,
                     vjust = 1.2,
                     show.legend = FALSE,
                     check_overlap = TRUE) +
           theme_minimal() +
           theme(plot.margin = margin(t = -15))

ggsave(here("img/2-volcano.pdf"))
ggsave(here("img/2-volcano.png"))

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
    scale_y_continuous(expand = c(0,0)) +
    coord_flip() +
                  theme_minimal() +
    theme(legend.position = "top") +
                  labs(fill = "Quadrant",
                       x = 'Variable Name',
                       y = 'Count')

ggsave(here("img/3-featbar.pdf"))
ggsave(here("img/3-featbar.png"))

# Table 1
df_sig %>%
    group_by(quad) %>%
    rename(Name = name) %>%
    summarise(n = n()) %>%
    arrange(desc(n)) %>%
    knitr::kable()

# Table 2
df_sig %>%
    group_by(name) %>%
    rename(Name = name) %>%
    summarise(medianHR = median(HR),
              n = n()) %>%
    arrange(desc(n)) %>%
    knitr::kable()
