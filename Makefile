# Define document variables
## Description: https://lincolnmullen.com/blog/a-makefile-to-convert-all-markdown-files-to-pdfs-using-pandoc/
## Example: https://gist.github.com/lmullen/3767386
## Description: http://plain-text.co/pull-it-together.html
## Example: https://github.com/kjhealy/rmd-starter/blob/master/Makefile
## All R and Jupyter Notebook source files in the working directory
R_FILES = $(wildcard *.R)
RMD_FILES = $(wildcard *.Rmd)
IPYNB_FILES = $(wildcard *.ipynb)
## All target pdf documents to be made or replaced in the out directory
PDF_FILES1 = $(patsubst %.R, out/%.pdf, $(R_FILES))
PDF_FILES2 = $(patsubst %.Rmd, out/%.pdf, $(RMD_FILES))
PDF_FILES3 = $(patsubst %.ipynb, out/%.pdf, $(IPYNB_FILES))
PDFS = $(PDF_FILES1) $(PDF_FILES2) $(PDF_FILES3)
## All target html documents to be made or replaced in the out directory
HTML_FILES1 = $(patsubst %.R, out/%.html, $(R_FILES))
HTML_FILES2 = $(patsubst %.Rmd, out/%.html, $(RMD_FILES))
HTML_FILES3 = $(patsubst %.ipynb, out/%.html, $(IPYNB_FILES))
HTML = $(HTML_FILES1) $(HTML_FILES2) $(HTML_FILES3)
## All target word documents to be made or replaced in the out directory
DOCX_FILES1 = $(patsubst %.R, out/%.docx, $(R_FILES))
DOCX_FILES2 = $(patsubst %.Rmd, out/%.docx, $(RMD_FILES))
DOCX_FILES3 = $(patsubst %.ipynb, out/%.docx, $(IPYNB_FILES))
DOCX = $(DOCX_FILES1) $(DOCX_FILES2) $(DOCX_FILES3)

# Define slideshow variables
## All R and Jupyter Notebook slideshow source files in the working directory
R_FILES = $(wildcard *.R)
R_SLIDES = $(wildcard *slides.R)
RMD_SLIDES = $(wildcard *slides.Rmd)
IPYNB_SLIDES = $(wildcard *slides.ipynb)
## All target pdf slides to be made or replaced in the out directory
PDF_SLIDES1 = $(patsubst %slides.R, out/%slides.pdf, $(R_FILES))
PDF_SLIDES2 = $(patsubst %slides.Rmd, out/%slides.pdf, $(RMD_FILES))
PDF_SLIDES3 = $(patsubst %slides.ipynb, out/%slides.pdf, $(IPYNB_FILES))
PDF_SLIDES = $(PDF_SLIDES1) $(PDF_SLIDES2) $(PDF_SLIDES3)
## All target HTML slides to be made or replaced in the out directory
HTML_SLIDES1 = $(patsubst %slides.R, out/%slides.html, $(R_FILES))
HTML_SLIDES2 = $(patsubst %slides.Rmd, out/%slides.html, $(RMD_FILES))
HTML_SLIDES3 = $(patsubst %slides.ipynb, out/%slides.html, $(IPYNB_FILES))
HTML_SLIDES = $(HTML_SLIDES1) $(HTML_SLIDES2) $(HTML_SLIDES3)
## All target PPTX slides to be made or replaced in the out directory
MD=$(RMD_SLIDES:.Rmd=.md)
PPTX=$(RMD_SLIDES:.md=.pptx)
SLIDES = $(PDF_SLIDES) $(HTML_SLIDES) $(PPTX_SLIDES)

## The difference between equals and colon equals :=
## is discussed here:http://andylinuxblog.blogspot.com/2015/06/what-is-colon-equals-sign-in-makefiles.html
## Variables: $@ = The file name of the target of the rule. $< = The name of the first prerequisite.

# .PHONY : variables
# variables:
# 	@echo R_FILES: $(R_FILES)
# 	@echo RMD_FILES: $(RMD_FILES)
# 	@echo IPYNB_FILES: $(IPYNB_FILES)
# 	@echo MD_FILES1: $(MD_FILES1)
# 	@echo MD_FILES2: $(MD_FILES2)
# 	@echo MD_FILES3: $(MD_FILES3)
# 	@echo MDS: $(MDS)

## Location of Pandoc support files.
PREFIX = /Users/marskar/gdrive/nhanes/.pandoc

## Location of your working bibliography file
BIB = /Users/marskar/gdrive/nhanes/nhanes.bib

## CSL stylesheet (located in the csl folder of the PREFIX directory).
CSL = apsa

# PDFS=$(MDS:.md=.pdf)
# HTML=$(MDS:.md=.html)
# DOCX=$(MDS:.md=.docx)

all:	$(PDFS) $(HTML) $(DOCX) $(SLIDES)
report:	$(PDFS) $(HTML) $(DOCX)
pdf: $(PDFS)
doc: $(DOCX)
htm: $(HTML)
slides: $(SLIDES)
beamer: $(PDF_SLIDES)
slidy: $(HTML_SLIDES)
ppt: $(PPTX_SLIDES)

# PDF DOCUMENT (PDF)
out/%.pdf: %.R
	Rscript -e "rmarkdown::render('$<', output_format = 'pdf_document')"
	mv *.pdf out/

out/%.pdf: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format = 'pdf_document')"
	mv *.pdf out/

out/%.pdf: %.ipynb
	jupyter nbconvert --to pdf $<
	mv *.pdf out/

# HTML DOCUMENT (HTML)
out/%.html: %.R
	Rscript -e "rmarkdown::render('$<', output_format = 'html_document')"
	mv *.html out/

out/%.html: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format = 'html_document')"
	mv *.html out/

out/%.html: %.ipynb
	jupyter nbconvert --to html $<
	mv *.html out/

# WORD DOCUMENT (DOCX)
out/%.docx: %.R
	Rscript -e "rmarkdown::render('$<', output_format = 'word_document')"
	mv *.docx out/

out/%.docx: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format = 'word_document')"
	mv *.docx out/

out/%.docx: %.ipynb
	jupyter nbconvert --to html $< --stdout | pandoc -s -o $@

# PDF SLIDES (BEAMER)
out/%slides.pdf: %slides.R
	Rscript -e "rmarkdown::render('$<', output_format = 'beamer_presentation')"
	mv *.pdf out/

out/%slides.pdf: %slides.Rmd
	Rscript -e "rmarkdown::render('$<', output_format = 'beamer_presentation')"
	mv *.pdf out/

# not working or not tested
# out/%slides.pdf: %slides.ipynb
# 	jupyter nbconvert --to html $< --stdout | pandoc -s -t beamer -o $@

# HTML SLIDES (HTML)
out/%slides.html: %slides.R
	Rscript -e "rmarkdown::render('$<', output_format = 'slidy_presentation')"
	mv *.html out/

out/%slides.html: %slides.Rmd
	Rscript -e "rmarkdown::render('$<', output_format = 'slidy_presentation')"
	mv *.html out/

out/%slides.html: %slides.ipynb
	jupyter nbconvert --to slides $<
	mv *.html out/

# PPTX SLIDES (PPTX)
out/%slides.md: %slides.Rmd
	Rscript -e "knitr::knit('$<')"
	mv *slides.md out/

out/%slides.pptx: %slides.md
	pandoc -s itr-gnr-pres.md --to pptx -o itr-gnr-pres.pptx

# to add styling to powerpoint, use --reference-doc=ppt/celestial.pptx option
# to add table of contents, use --toc option
# not working or not tested
# out/%.pptx: %.R
# 	Rscript -e "rmarkdown::render('$<', output_format = 'md_document')"
# 	mv *.docx out/

# not working or not tested
# out/%.pptx: %.ipynb
# 	jupyter nbconvert --to html $< --stdout | pandoc -s -o $@

