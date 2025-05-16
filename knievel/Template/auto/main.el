(TeX-add-style-hook
 "main"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("MastersDoctoralThesis" "11pt" "ngerman" "singlespacing" "headsepline" "")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("biblatex" "backend=bibtex" "style=ieee-alphabetic" "bibstyle=ieee-alphabetic" "maxnames=3" "minnames=1" "natbib=true") ("csquotes" "autostyle=true")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "Chapters/Chapter1"
    "Appendices/AppendixA"
    "MastersDoctoralThesis"
    "MastersDoctoralThesis11"
    "inputenc"
    "fontenc"
    "mathpazo"
    "biblatex"
    "csquotes")
   (LaTeX-add-bibliographies
    "example"))
 :latex)

