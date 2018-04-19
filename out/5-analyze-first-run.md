    library(readr)
    library(here)

    ## here() starts at /Users/marskar/gdrive/nhanes

    library(dplyr)

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

    library(ggplot2)
    library(purrr)

    #define function needed to calculate median model stats
    get_median <- function(x, model_type, model_stat){
        model_type <- deparse(substitute(model_type))
        model_stat <- enquo(model_stat)
        x %>%
            select(type, !!model_stat) %>%
            group_by(type) %>%
            summarise(model_median =
                      median(!!model_stat)) %>%
            filter(type == model_type) %>%
            select(model_median) %>%
            as.numeric
    }

    #read in dataset created by script 4
    dat_quad <- read_rds(here("dat/6-model-diff-sizes.rds")) %>%
        rename(con = concordance) %>%
        mutate(quad =
               as.factor(
                   case_when(con > median(con) &
                             aic <= median(aic) ~ 1,
                             con > median(con) &
                             aic > median(aic) ~ 2,
                             con <= median(con) &
                             aic <= median(aic) ~ 3,
                             con <= median(con) &
                             aic > median(aic) ~ 4
                            )
                        )
              )

    table(dat_quad$quad)

    ## 
    ##   1   2   3   4 
    ## 111 349 369 131

    table(dat_quad$type)

    ## 
    ## coxph ridge 
    ##   480   480

    dat_quad %>% group_by(type, quad) %>% summarise(n=n())

    ## # A tibble: 8 x 3
    ## # Groups:   type [?]
    ##   type  quad      n
    ##   <chr> <fct> <int>
    ## 1 coxph 1        21
    ## 2 coxph 2       232
    ## 3 coxph 3       118
    ## 4 coxph 4       109
    ## 5 ridge 1        90
    ## 6 ridge 2       117
    ## 7 ridge 3       251
    ## 8 ridge 4        22

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
                    size = "Model Size",
                    shape = "Model Type",
                    colour = "Quadrant")

![](/Users/marskar/gdrive/nhanes/out/5-analyze-first-run_files/figure-markdown_strict/unnamed-chunk-1-1.png)

    ggsave(here("img/1-quad.pdf"))

    ## Saving 7 x 5 in image

    ggsave(here("img/1-quad.png"))

    ## Saving 7 x 5 in image

    #define function to flatten dat_quad
    dfs <- function(quadrant) {
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
    df_coef <- map_dfr(seq(4), dfs)
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

![](/Users/marskar/gdrive/nhanes/out/5-analyze-first-run_files/figure-markdown_strict/unnamed-chunk-1-2.png)

    ggsave(here("img/2-volcano.pdf"))

    ## Saving 7 x 5 in image

    ggsave(here("img/2-volcano.png"))

    ## Saving 7 x 5 in image

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

![](/Users/marskar/gdrive/nhanes/out/5-analyze-first-run_files/figure-markdown_strict/unnamed-chunk-1-3.png)

    ggsave(here("img/3-varbar.pdf"))

    ## Saving 7 x 5 in image

    ggsave(here("img/3-varbar.png"))

    ## Saving 7 x 5 in image

    # Table 1
    df_sig %>%
        group_by(quad) %>%
        rename(Name = name) %>%
        summarise(n = n()) %>%
        arrange(desc(n)) %>%
        knitr::kable()

<table>
<thead>
<tr class="header">
<th style="text-align: right;">quad</th>
<th style="text-align: right;">n</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: right;">2</td>
<td style="text-align: right;">579</td>
</tr>
<tr class="even">
<td style="text-align: right;">3</td>
<td style="text-align: right;">367</td>
</tr>
<tr class="odd">
<td style="text-align: right;">1</td>
<td style="text-align: right;">288</td>
</tr>
<tr class="even">
<td style="text-align: right;">4</td>
<td style="text-align: right;">97</td>
</tr>
</tbody>
</table>

    # Table 2
    df_sig %>%
        group_by(name) %>%
        rename(Name = name) %>%
        summarise(medianHR = median(HR),
                  n = n()) %>%
        arrange(desc(n)) %>%
        knitr::kable()

<table>
<thead>
<tr class="header">
<th style="text-align: left;">Name</th>
<th style="text-align: right;">medianHR</th>
<th style="text-align: right;">n</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">DMAETHNR</td>
<td style="text-align: right;">1.1566884</td>
<td style="text-align: right;">149</td>
</tr>
<tr class="even">
<td style="text-align: left;">HAT16</td>
<td style="text-align: right;">1.7560810</td>
<td style="text-align: right;">135</td>
</tr>
<tr class="odd">
<td style="text-align: left;">HAK9</td>
<td style="text-align: right;">1.2189889</td>
<td style="text-align: right;">133</td>
</tr>
<tr class="even">
<td style="text-align: left;">HAN9</td>
<td style="text-align: right;">1.7947078</td>
<td style="text-align: right;">118</td>
</tr>
<tr class="odd">
<td style="text-align: left;">HSAITMOR</td>
<td style="text-align: right;">1.0004575</td>
<td style="text-align: right;">111</td>
</tr>
<tr class="even">
<td style="text-align: left;">HAQ7</td>
<td style="text-align: right;">0.3036946</td>
<td style="text-align: right;">100</td>
</tr>
<tr class="odd">
<td style="text-align: left;">HAQ1</td>
<td style="text-align: right;">1.0664794</td>
<td style="text-align: right;">86</td>
</tr>
<tr class="even">
<td style="text-align: left;">HAR1</td>
<td style="text-align: right;">0.6274918</td>
<td style="text-align: right;">73</td>
</tr>
<tr class="odd">
<td style="text-align: left;">HFA13</td>
<td style="text-align: right;">0.6099651</td>
<td style="text-align: right;">58</td>
</tr>
<tr class="even">
<td style="text-align: left;">HAT2</td>
<td style="text-align: right;">1.6533201</td>
<td style="text-align: right;">50</td>
</tr>
<tr class="odd">
<td style="text-align: left;">HAJ0</td>
<td style="text-align: right;">1.9863574</td>
<td style="text-align: right;">42</td>
</tr>
<tr class="even">
<td style="text-align: left;">HAT29</td>
<td style="text-align: right;">2.0971949</td>
<td style="text-align: right;">40</td>
</tr>
<tr class="odd">
<td style="text-align: left;">WTPXRP2</td>
<td style="text-align: right;">0.9999864</td>
<td style="text-align: right;">40</td>
</tr>
<tr class="even">
<td style="text-align: left;">HAB1</td>
<td style="text-align: right;">1.2485765</td>
<td style="text-align: right;">34</td>
</tr>
<tr class="odd">
<td style="text-align: left;">HAT18</td>
<td style="text-align: right;">1.5324396</td>
<td style="text-align: right;">34</td>
</tr>
<tr class="even">
<td style="text-align: left;">HAV7R</td>
<td style="text-align: right;">1.0002031</td>
<td style="text-align: right;">34</td>
</tr>
<tr class="odd">
<td style="text-align: left;">HAC1A</td>
<td style="text-align: right;">0.6096885</td>
<td style="text-align: right;">21</td>
</tr>
<tr class="even">
<td style="text-align: left;">HAN5JS</td>
<td style="text-align: right;">0.9980961</td>
<td style="text-align: right;">18</td>
</tr>
<tr class="odd">
<td style="text-align: left;">WTPQRP21</td>
<td style="text-align: right;">0.9999893</td>
<td style="text-align: right;">13</td>
</tr>
<tr class="even">
<td style="text-align: left;">HAS1</td>
<td style="text-align: right;">1.3772235</td>
<td style="text-align: right;">10</td>
</tr>
<tr class="odd">
<td style="text-align: left;">HAT10</td>
<td style="text-align: right;">1.3949075</td>
<td style="text-align: right;">9</td>
</tr>
<tr class="even">
<td style="text-align: left;">HSFSIZER</td>
<td style="text-align: right;">0.9185453</td>
<td style="text-align: right;">8</td>
</tr>
<tr class="odd">
<td style="text-align: left;">WTPQRP43</td>
<td style="text-align: right;">0.9999858</td>
<td style="text-align: right;">8</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: right;">1.0260494</td>
<td style="text-align: right;">4</td>
</tr>
<tr class="odd">
<td style="text-align: left;">WTPQRP27</td>
<td style="text-align: right;">0.9999872</td>
<td style="text-align: right;">3</td>
</tr>
</tbody>
</table>
