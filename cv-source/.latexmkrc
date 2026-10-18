# Read automatically by latexmk when run from this folder (LaTeX Workshop does that).
# After every successful build, copy the PDF to where the website links it.
$pdf_mode = 1;
$out_dir = 'build';
$success_cmd = 'cp "build/main.pdf" "../files/Oliboni_CV.pdf" && echo "published ../files/Oliboni_CV.pdf"';
