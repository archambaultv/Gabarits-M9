# Configuration latexmk du gabarit d'examen
#   latexmk          -> build/questionnaire.pdf, build/cahier.pdf, build/corrige.pdf
#   latexmk cibles/questionnaire.tex   -> un seul document
#   latexmk -c       -> efface les fichiers temporaires (garde les PDF)
$pdf_mode = 4;                     # LuaLaTeX
$out_dir  = 'build';
$lualatex = 'lualatex -interaction=nonstopmode -file-line-error %O %S';
@default_files = ('cibles/questionnaire.tex', 'cibles/cahier_reponses.tex', 'cibles/corrige.tex');
