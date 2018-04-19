## All Rmarkdown files in the working directory
R_FILES = $(wildcard *.R*)
IPYNB = $(wildcard *.ipynb)
SLIDES = $(wildcard *slides.Rmd)
MDS = $(wildcard out/*.md)
## Location of Pandoc support files.
PREFIX = /Users/marskar/gdrive/nhanes/.pandoc

## Location of your working bibliography file
BIB = /Users/marskar/gdrive/nhanes/nhanes.bib

## CSL stylesheet (located in the csl folder of the PREFIX directory).
CSL = apsa

MD=$(R_FILES:.R=.md) $(R_FILES:.Rmd=.md) $(IPYNB:.ipynb=.md)
PDFS=$(MDS:.md=.pdf)
HTML=$(MDS:.md=.html)
TEX=$(MDS:.md=.tex)
DOCX=$(MDS:.md=.docx)

## VARIOUS SLIDE METHODS
REVEALJS_OPTS = -t revealjs -V theme=simple -V slideNumber=true -V transition=none -H resources/adjust-revealjs.style
SLIDY_OPTS = -t slidy
S5_OPTS = -t s5
SLIDES_OPTS = $(REVEALJS_OPTS)

all:	$(MD) $(PDFS) $(HTML) $(DOCX)

# variables: $@ = The file name of the target of the rule. $< = The name of the first prerequisite.
%.md: %.R*
	Rscript -e "rmarkdown::render('$<', output_format = 'md_document', output_dir = 'out')"

 %.md: %.ipynb
	 jupyter nbconvert --to markdown out/$@ $<

%.html:	%.md 
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w html --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

%.tex:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w latex -s --csl=$(PREFIX)/csl/ajps.csl --bibliography=$(BIB) -o $@ $<


%.pdf:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w latex -s --csl=$(PREFIX)/csl/ajps.csl --bibliography=$(BIB) -o $@ $<

%.docx:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o $@ $<

