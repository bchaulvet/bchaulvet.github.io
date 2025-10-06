@echo off
set FILE=main
pdflatex -interaction=nonstopmode %FILE%.tex
biber %FILE%
pdflatex -interaction=nonstopmode %FILE%.tex
pdflatex -interaction=nonstopmode %FILE%.tex
echo Done. Output: %FILE%.pdf
