(TeX-add-style-hook
 "MastersDoctoralThesis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("scrlayer-scrpage" "markcase=used")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "etoolbox"
    "xparse"
    "parskip"
    "babel"
    "scrbase"
    "scrhack"
    "setspace"
    "longtable"
    "siunitx"
    "graphicx"
    "booktabs"
    "caption"
    "xcolor"
    "geometry"
    "scrlayer-scrpage"
    "hyperref")
   (TeX-add-symbols
    '("dedicatory" 1)
    "classname"
    "baseclass"
    "abovechapterskip"
    "chapterbelowskip"
    "chapterinbetweenskip"
    "autodot"
    "mdtChapapp"
    "chapteralign"
    "chapterfont"
    "chapterprefixfont"
    "addchap"
    "addsec"
    "thesistitle"
    "author"
    "authorname"
    "supervisor"
    "supname"
    "supervisors"
    "supnames"
    "company"
    "supcompany"
    "examiner"
    "examname"
    "degree"
    "degreename"
    "addresses"
    "addressname"
    "university"
    "univname"
    "department"
    "deptname"
    "group"
    "groupname"
    "faculty"
    "facname"
    "subject"
    "subjectname"
    "keywords"
    "keywordnames"
    "checktoopen"
    "bhrule"
    "tttypeout"
    "HRule"
    "decoRule"
    "addchaptertocentry"
    "blank"
    "chapter"
    "blankpagestyle"
    "setblankpagestyle"
    "setchapterpagestyle"
    "cleardoublepage"
    "abbrevname"
    "abstractauthorfont"
    "abstracttitlefont"
    "byname"
    "abstractname"
    "acknowledgementname"
    "authorshipname"
    "dedicatory"
    "constantsname"
    "symbolsname"
    "shorttitle"
    "ttitle")
   (LaTeX-add-environments
    "abbreviations"
    "abstract"
    "extraAbstract"
    "acknowledgements"
    "declaration"
    "constants"
    "symbols"))
 :latex)

