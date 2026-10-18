# pedrooliboni.com

Personal website. Hand-written HTML and CSS, no build step, no external scripts, no web fonts (system Arial, as on Chad Jones's site).
Served by GitHub Pages from the `master` branch root (`.nojekyll` disables Jekyll processing).

- `index.html` — home: one-line statement and work in progress
- `research.html` — full research list
- `writing.html` — essays (Substack + PDF)
- `resources.html` — syllabi and, when ready, archive scans of others' essays
- `style.css` — the only stylesheet
- `files/` — `Oliboni_CV.pdf` (built from `cv-source/`, never edited by hand) and essay PDFs
- `cv-source/` — LaTeX source of the CV (`main.tex`) and `build.sh`; `build/` is git-ignored
- `.vscode/settings.json` — LaTeX Workshop: saving `cv-source/main.tex` (or Cmd+Option+B) rebuilds and copies the PDF into `files/`
- `.githooks/pre-commit` — rebuilds and stages `files/Oliboni_CV.pdf` whenever `cv-source/main.tex` is committed (enable once per clone: `git config core.hooksPath .githooks`)
- `research/`, `essays/`, `cv/`, `real_micro/` — redirect stubs for the old site's URLs

To add a paper or essay, copy an existing `<div class="entry">` block and edit it.

## Updating the CV

1. Edit `cv-source/main.tex` in VS Code with this repo open as the workspace. Saving rebuilds the PDF and copies it to `files/Oliboni_CV.pdf`, which every page links to (`./cv-source/build.sh` does the same from a terminal).
2. `git add -A && git commit -m "Update CV" && git push`. The pre-commit hook rebuilds the PDF once more and stages it, so the committed PDF always matches the committed source. GitHub Pages redeploys in under a minute.

First time on a new clone: `git config core.hooksPath .githooks`.

The Dropbox folder `Career/General/CV/Latex` is no longer the source of truth; this repo is.
