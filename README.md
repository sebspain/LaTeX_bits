LaTeX_bits
==========

Various LaTeX files that may be useful

EPSRC Template
--------------

Files Required:

* epsrc.cls
* epsrc.tex
* refs.bib
* img/placeholder_image.pdf

This is my template for writing the main Case for Support for EPSRC grant proposals.
The class file is based upon the standard article class and contains the main formatting including fonts, margins etc as well as maximising usable space. 
The tex file is a usable example with some of the features that I use.

To get PDF version build with

```sh
latexmk -pdf -bibtex epsrc.tex
```


