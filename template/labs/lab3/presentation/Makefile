SRC = presentation.md
FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))
FILES += $(patsubst %.md, %.html, $(wildcard *.md))

FILTERS =
PDF_ENGINE =
PDF_OPTIONS =
PDF_FORMAT_OPTIONS = -t beamer --slide-level=2

FILTERS += --citeproc
# FILTERS += -F pandoc-crossref
PDF_ENGINE += --pdf-engine=xelatex
PDF_OPTIONS += --number-sections

REVEALJS_THEME = beige

%.pdf: %.md
	-@pandoc presentation.md --pdf-engine=pdflatex -t beamer -o presentation.pdf

%.html: %.md
	-@pandoc "$<" --embed-resources --standalone -t revealjs -V theme=$(REVEALJS_THEME) -o "$@"

all: $(FILES)

clean:
	-@rm $(FILES) *~

cleanall: clean
