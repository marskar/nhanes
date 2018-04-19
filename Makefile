## All R files in the working directory
R_FILES = $(wildcard *.R)
RMD_FILES = $(wildcard *.Rmd)
IPYNB_FILES = $(wildcard *.ipynb)

PDF_FILES1=$(patsubst %.R, out/%.pdf, $(R_FILES))
PDF_FILES2=$(patsubst %.Rmd, out/%.pdf, $(RMD_FILES))
PDF_FILES3=$(patsubst %.ipynb, out/%.pdf, $(IPYNB_FILES))



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

## VARIOUS SLIDE METHODS
REVEALJS_OPTS = -t revealjs -V theme=simple -V slideNumber=true -V transition=none -H resources/adjust-revealjs.style
SLIDY_OPTS = -t slidy
S5_OPTS = -t s5
SLIDES_OPTS = $(REVEALJS_OPTS)

all:	$(PDF_FILES1) $(PDF_FILES2) $(PDF_FILES3)#$(PDFS) $(HTML) $(DOCX)

# variables: $@ = The file name of the target of the rule. $< = The name of the first prerequisite.
out/%.pdf: %.R
	Rscript -e "rmarkdown::render('$<', output_format = 'pdf_document')"
	mv *.pdf out/

out/%.pdf: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format = 'pdf_document')"
	mv *.pdf out/

out/%.pdf: %.ipynb
	jupyter nbconvert --to pdf $<
	mv *.pdf out/

# %.html:	%.md
# 	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w html --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

# %.pdf:	%.md
# 	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w latex -s --csl=$(PREFIX)/csl/ajps.csl --bibliography=$(BIB) -o $@ $<

# %.docx:	%.md
# 	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

