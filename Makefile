SRC_FILES = $(wildcard **/*.tex)

all: $(SRC_FILES:.tex=.pdf)

%.pdf: %.tex
	latexmk -quiet -pdf -use-make -cd $<

clean:
	latexmk -cd -c $(SRC_FILES)

clean-all:
	latexmk -cd -C $(SRC_FILES)
