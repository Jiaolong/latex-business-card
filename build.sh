#! /usr/bin/env bash

# parse arguments
if [[ $# -ne 1 ]]; then
    echo "Usage: $(basename $0) texfile"
    echo "       texfile: (card_en.tex card_cn.tex)"
    exit
fi

texfile=$1
mkdir build
pdflatex --shell-escape --output-dir=build ${texfile}

# remove useless files
rm -rf *-pics.pdf
