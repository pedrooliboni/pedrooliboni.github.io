#!/usr/bin/env bash
# Compile the CV and publish it to the website.
#   ./cv-source/build.sh        (from the repo root, or from anywhere)
# Output: files/Oliboni_CV.pdf  (the file every page links to)
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(dirname "$HERE")"
mkdir -p "$HERE/build"
cd "$HERE"
pdflatex -interaction=nonstopmode -file-line-error -output-directory=build main.tex >/dev/null
pdflatex -interaction=nonstopmode -file-line-error -output-directory=build main.tex >/dev/null   # second pass for "page X of Y"
cp build/main.pdf "$ROOT/files/Oliboni_CV.pdf"
echo "published: files/Oliboni_CV.pdf ($(du -h "$ROOT/files/Oliboni_CV.pdf" | cut -f1))"
echo "next: git add files/Oliboni_CV.pdf cv-source/main.tex && git commit -m 'Update CV' && git push"
