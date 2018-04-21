#define function needed to calculate median model stats
get_median <- function(x, model_type, model_stat){
    model_type <- deparse(substitute(model_type))
    model_stat <- enquo(model_stat)
    x %>%
        select(type, !!model_stat) %>%
        group_by(type) %>%
        summarise(model_median = median(!!model_stat)) %>%
        filter(type == model_type) %>%
        select(model_median) %>%
        as.numeric
}
