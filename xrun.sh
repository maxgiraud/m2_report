#!/bin/bash

pdflatex rapport.tex \
&& bibtex rapport.aux \
&& pdflatex rapport.tex \
&& pdflatex rapport.tex \
&& (rm -v *.aux *.bbl *.blg *.log *.out *.toc ;\
evince rapport.pdf)
