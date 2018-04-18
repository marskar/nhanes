## All Rmarkdown files in the working directory
RMD = $(wildcard *.Rmd)
R_FILES=$(wildcard kod/*.R)
## Location of Pandoc support files.
PREFIX = /Users/marskar/gdrive/nhanes/.pandoc

## Location of your working bibliography file
BIB = /Users/marskar/gdrive/nhanes/nhanes.bib

## CSL stylesheet (located in the csl folder of the PREFIX directory).
CSL = apsa

MD=$(RMD:.Rmd=.md)
PDFS=$(RMD:.Rmd=.pdf)
HTML=$(RMD:.Rmd=.html)
TEX=$(RMD:.Rmd=.tex)
DOCX=$(RMD:.Rmd=.docx)

all:	$(MD) $(PDFS) $(HTML) $(DOCX)

# variables: $@ = The file name of the target of the rule. $< The name of the first prerequisite.
%.md: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_format = 'md_document')"
	mv $@ out/

%.html:	%.md 
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w html --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o out/$@ out/$<

%.tex:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w latex -s --csl=$(PREFIX)/csl/ajps.csl --bibliography=$(BIB) -o out/$@ out/$<


%.pdf:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w latex -s --csl=$(PREFIX)/csl/ajps.csl --bibliography=$(BIB) -o out/$@ out/$<

%.docx:	%.md
	pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -s --csl=$(PREFIX)/csl/$(CSL).csl --bibliography=$(BIB) -o out/$@ out/$<

