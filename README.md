# pedrooliboni.com

Personal website. Hand-written HTML and CSS, no build step, no external scripts or fonts.
Served by GitHub Pages from the `master` branch root (`.nojekyll` disables Jekyll processing).

- `index.html` — home: one-line statement and work in progress
- `research.html` — full research list
- `writing.html` — essays (Substack + PDF)
- `resources.html` — syllabi and, when ready, archive scans of others' essays
- `style.css` — the only stylesheet
- `fonts/` — Source Sans 3 (Source Sans Pro), self-hosted variable woff2, OFL-licensed
- `files/` — `Oliboni_CV.pdf` (built from `cv-source/`, never edited by hand) and essay PDFs
- `cv-source/` — LaTeX source of the CV (`main.tex`) and `build.sh`; `build/` is git-ignored
- `.vscode/settings.json` — LaTeX Workshop recipe: Cmd+Option+B on `cv-source/main.tex` rebuilds and copies the PDF into `files/`
- `research/`, `essays/`, `cv/`, `real_micro/` — redirect stubs for the old site's URLs

To add a paper or essay, copy an existing `<div class="entry">` block and edit it.

## Updating the CV

1. Edit `cv-source/main.tex`.
2. Build: either `./cv-source/build.sh` from a terminal, or Cmd+Option+B in VS Code with this repo open as the workspace.
   Both write `files/Oliboni_CV.pdf`, which every page links to.
3. `git add -A && git commit -m "Update CV" && git push`. GitHub Pages redeploys in under a minute.

The Dropbox folder `Career/General/CV/Latex` is no longer the source of truth; this repo is.
