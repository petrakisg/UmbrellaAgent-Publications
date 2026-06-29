# Compilation script for the Thesis
Write-Host "Starting compilation of Final_Thesis.tex using XeLaTeX..." -ForegroundColor Cyan

# 1. First run
xelatex -interaction=nonstopmode Final_Thesis.tex
if ($LASTEXITCODE -ne 0) { Write-Error "First XeLaTeX run failed"; exit $LASTEXITCODE }

# 2. BibTeX run
bibtex Final_Thesis
if ($LASTEXITCODE -ne 0) { Write-Warning "BibTeX run failed or produced warnings" }

# 3. Second run for references
xelatex -interaction=nonstopmode Final_Thesis.tex

# 4. Third run for TOC, List of Figures, etc.
xelatex -interaction=nonstopmode Final_Thesis.tex

Write-Host "Compilation complete! Check Final_Thesis.pdf." -ForegroundColor Green
