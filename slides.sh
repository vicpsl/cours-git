#!/bin/bash

for filename in **/slides.md; do
    pandoc -t html5 "${filename%slides.md}slides.md" -o "${filename%slides.md}index.html" --template templates/template.html --css templates/template.css --self-contained --toc --toc-depth 2 
done
