## All R files in the working directory
R_FILES = $(wildcard *.R)
RMD_FILES = $(wildcard *.Rmd)

MD_FILES1=$(patsubst %.R, out/%.md, $(R_FILES))
MD_FILES2=$(patsubst %.Rmd, out/%.md, $(RMD_FILES))


# .PHONY : variables
# variables:
# 	@echo R_FILES: $(R_FILES)
# 	@echo MD_FILES1: $(MD_FILES1)
# 	@echo MD_FILES2: $(MD_FILES2)


## Location of Pandoc support files.
PREFIX = /Users/marskar/gdrive/nhanes/.pandoc

## Location of your working bibliography file
BIB = /Users/marskar/gdrive/nhanes/nhanes.bib

## CSL stylesheet (located in the csl folder of the PREFIX directory).
CSL = apsa

MDS = $(wildcard old/*.md)
PDFS=$(MDS:.md=.pdf)
HTML=$(MDS:.md=.html)
DOCX=$(MDS:.md=.docx)

## VARIOUS SLIDE METHODS
REVEALJS_OPTS = -t revealjs -V theme=simple -V slideNumber=true -V transition=none -H resources/adjust-revealjs.style
SLIDY_OPTS = -t slidy
S5_OPTS = -t s5
SLIDES_OPTS = $(REVEALJS_OPTS)

all:	$(MD_FILES1) $(MD_FILES2) $(PDFS) $(HTML) $(DOCX)

# variables: $@ = The file name of the target of the rule. $< = The name of the first prerequisite.
$(MD_FILES1): $(R_FILES)
	Rscript -e "rmarkdown::render('$<', output_format = 'md_document', output_dir = 'out')"

$(MD_FILES2): $(RMD_FILES)
	Rscript -e "rmarkdown::render('$<', output_format = 'md_document', output_dir = 'out')"

%.md: %.ipynb
	 jupyter nbconvert --to markdown --output $@ $<

%.html:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w html --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

%.pdf:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w latex -s --csl=$(PREFIX)/csl/ajps.csl --bibliography=$(BIB) -o $@ $<

%.docx:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

