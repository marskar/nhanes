#' ---
#' title: "Analyze Complete Cases Models"
#' author: "Martin Skarzynski"
#' date: "`r Sys.Date()`"
#' ---

library(readr)
library(here)
library(dplyr)
library(ggplot2)
library(tidyr)
library(purrr)
library(stringr)
library(forcats)
library(tidyr)

#read in datasets created by scripts 4 & 6
dat_quad1 <- read_rds("dat/6-model-diff-sizes.rds")
dat_quad3 <- read_rds("dat/6-model-third-run.rds")

dat_quad1 <-    dat_quad1 %>%
    rename(con=concordance,
           n_vars=size,
           hr_ci_upper = HR_CI_upper,
           hr_ci_lower = HR_CI_lower) %>%
    mutate(run = rep(1, nrow(.)),
           quad = case_when(con > median(con) &
                            aic <= median(aic) ~ 1,
                            con > median(con) &
                            aic > median(aic) ~ 2,
                            con <= median(con) &
                            aic <= median(aic) ~ 3,
                            con <= median(con) &
                            aic > median(aic) ~ 4
                           )
          )

dat_quad3 <-    dat_quad3 %>%
    drop_na() %>%
    rename(con=concordance) %>%
    mutate(type = str_replace(type, "cox", "coxph"),
           type = str_replace(type, "rid", "ridge"),
           run = rep(3, nrow(.)),
           quad = rep(5, nrow(.)))

dat_quad <- bind_rows(dat_quad1, dat_quad3) %>%
    mutate(quad = as.factor(quad)) %>%
    mutate(quad = fct_recode(quad, "Run 1, Group A" = '1',
           "Run 1, Group B" = '2',
           "Run 1, Group C" = '3',
           "Run 1, Group D" = '4',
           "Run 3" = '5'))

#dat_quad <- dat_quad %>%
#    mutate(quadrun = interaction(quad, run))
glimpse(dat_quad)

# Figure 1
dat_quad %>%
    ggplot(aes(x = aic,
               y = con,
               size = n_vars,
               colour = quad)) +
geom_point(aes(shape = factor(type)),
           #size = 3,
           stroke = 1) +
scale_shape(solid = FALSE) +
           theme_minimal() +
           labs(
                x = 'Akaike Information Criterion',
                y = 'Concordance',
                size = "Model Size",
                shape = "Model Type",
                colour = "Color Labels") +
    geom_hline(yintercept = 83.5)

ggsave(here("img/1-quad-final.pdf"))
ggsave(here("img/1-quad-final.png"))

# Unpack names using one of the list columns
namevec <- names(unlist(dat_quad$hr_ci_lower))

df_coef <- dat_quad %>%
    unnest() %>%
    mutate(name = namevec) %>%
    filter(n_vars > 1)

#remove ridge from variable name
df_coef$name <- gsub("ridge\\(|\\)", "", df_coef$name)

# Figure 2
df_coef %>%
    filter(!between(hazard_ratio, .99, 1.01)) %>%
    mutate(coef_pvalue = if_else(near(coef_pvalue, 0),
                                 coef_pvalue+0.1^17,
                                 coef_pvalue)) %>%
    ggplot(aes(x = log2(hazard_ratio),
               y = -log10(coef_pvalue),
               colour = quad)) +
           labs(colour = "Color Label",
                x = 'log2 Hazard Ratio',
                y = '-log10 p-value') +
           geom_point(alpha = 0.5,
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

ggsave(here("img/2-volcano-final.pdf"))
ggsave(here("img/2-volcano-final.png"))

#filter out p-values greater than .1^10
df_sig <- df_coef %>%
    filter(coef_pvalue<.1^10)

df_sig %>% glimpse
#obtain the order by count for name
ord <- df_sig %>%
    count(name) %>%
    arrange(n) %>%
    select(name)

#create name factor variable with levels ordered by count
df_sig$ord_name <- factor(df_sig$name, levels=ord$name)

#df_sig %>%
#    count(name) %>%
#    mutate(name = fct_reorder(name, n)) %>%
#    ggplot(aes(x = name, y = n)) +
#    geom_col() +
#    coord_flip()


# Figure 3
df_sig %>%
    mutate_if(is.integer, as.factor) %>%
    ggplot(aes(ord_name,fill=quad)) +
    geom_bar(position = position_stack(reverse = TRUE)) +
    scale_y_continuous(expand = c(0,0)) +
    coord_flip() +
                  theme_minimal() +
    theme(legend.position = "top") +
                  labs(fill = "Color Label",
                       x = 'Variable Name',
                       y = 'Count')

ggsave(here("img/3-varbar-final.pdf"))
ggsave(here("img/3-varbar-final.png"))

df_sig$name[""]
names( df_sig )
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
