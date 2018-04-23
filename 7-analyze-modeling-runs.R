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

#read in datasets created by scripts 4 & 5
dat_quad1 <- read_rds("dat/6-model-diff-sizes.rds")
dat_quad3 <- read_rds("dat/6-model-third-run.rds")
#files <- c("dat/4-model-complete-cases.rds", "dat/5-model-second-run.rds")

#read_rds("dat/4-model-first-run.rds") %>%
    #rename(con = concordance) %>%
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

           #quad = #as.factor(case_when(con > median(con) &
                  #                    aic <= median(aic) ~ 1,
                  #                    con > median(con) &
                  #                    aic > median(aic) ~ 2,
                  #                    con <= median(con) &
                  #                    aic <= median(aic) ~ 3,
                  #                    con <= median(con) &
                  #                    aic > median(aic) ~ 4
                  #                  ))

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


#remove ridge from name

#define function to flatten dat_quad
dfs <- function(quadrun) {
    dat <- dat_quad %>%
        filter(quadrun == quadrun) %>%
        select(starts_with('h'),
               coef_pvalue)

        data_frame(name = names(flatten(dat[[1]])),
                   HR = flatten_dbl(dat[[1]]),
                   HR_CI_lower = flatten_dbl(dat[[2]]),
                   HR_CI_upper = flatten_dbl(dat[[3]]),
                   coef_pvalue = flatten_dbl(dat[[4]]),
                   quad = rep(quadrun,
                              length(flatten(dat[[1]])))
                   )
}

#flatten dat_quad
df_coef <- map_dfr(interaction(seq(4),seq(from = 1, to = 3, by = 2)), dfs)
glimpse(df_coef)
df_coef$name <- gsub("ridge\\(|\\)", "", df_coef$name)
unique(df_coef$quad)
# Figure 2
df_coef %>%
    select(-starts_with("HR_CI")) %>%
    filter(!between(HR, .99, 1.01)) %>%
    mutate(coef_pvalue = if_else(near(coef_pvalue, 0),
                                 coef_pvalue+0.1^17,
                                 coef_pvalue)) %>%
    ggplot(aes(x = log2(HR),
               y = -log10(coef_pvalue),
               colour = quad)) +
           labs(colour = "Quadrant",
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

ggsave(here("img/2-volcano-age_strat.pdf"))
ggsave(here("img/2-volcano-age_strat.png"))

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

ggsave(here("img/3-varbar3.pdf"))
ggsave(here("img/3-varbar3.png"))

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
