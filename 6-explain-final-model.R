library('lime')
explainer <- lime(dat, as_regressor(model))#, bin_continuous = TRUE, quantile_bins = FALSE)
explanation <- explain(dat, explainer, n_features = 30)
# Only showing part of output for better printing
explanation[, 2:9]

