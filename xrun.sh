#!/bin/bash

pdflatex rapport.tex \
&& bibtex rapport.aux \
&& pdflatex rapport.tex \
&& pdflatex rapport.tex \
&& (rm -v chapters/*.aux chapters/*.bbl chapters/*.blg chapters/*.lof chapters/*.log chapters/*.out chapters/*.toc ;\
evince rapport.pdf)
