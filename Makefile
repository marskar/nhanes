1-cap-nhanes.md: 1-cap-nhanes.Rmd
	Rscript -e "knitr::knit('1-cap-nhanes.Rmd')"

1-cap-nhanes.pdf: 1-cap-nhanes.Rmd
	Rscript -e "rmarkdown::render('1-cap-nhanes.Rmd','pdf_document')"
