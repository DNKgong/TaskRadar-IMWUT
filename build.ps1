param(
    [ValidateSet('main')]
    [string]$Document = 'main'
)
$ErrorActionPreference = 'Stop'
Push-Location $PSScriptRoot
try {
    function Invoke-LatexPass {
        & pdflatex --disable-installer -interaction=nonstopmode -halt-on-error -file-line-error "$Document.tex"
        if ($LASTEXITCODE -ne 0) { throw "pdflatex failed; inspect $Document.log" }
    }
    Invoke-LatexPass
    if (Select-String -LiteralPath "$Document.aux" -SimpleMatch '\bibdata{' -Quiet) {
        & bibtex $Document
        if ($LASTEXITCODE -ne 0) { throw "bibtex failed; inspect $Document.blg" }
    }
    Invoke-LatexPass
    Invoke-LatexPass
} finally {
    Pop-Location
}
