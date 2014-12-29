\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{epsrc_temp}[2014/12/28 Template for EPSRC Case for Support]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass[11pt,onecolumn,a4paper,notitlepage]{article}

\RequirePackage[margin=2cm]{geometry}

%natbib required for angew bst and to reduce spacing
\RequirePackage[super,sort&compress,numbers,]{natbib}
\setlength{\bibsep}{0.0pt} %reducing spacing in bibliography

\RequirePackage[small,compact]{titlesec}
\titlespacing{\section}{0pt}{0ex}{0.1ex}
\titlespacing{\subsection}{0pt}{0ex}{0ex}
\titlespacing{\subsubsection}{0pt}{0ex}{0ex}

% customisable lists 
\RequirePackage{enumitem}
\setlist{nolistsep}%remove spacing from lists

\RequirePackage[T1]{fontenc}
\RequirePackage[scaled]{helvet}
\renewcommand*\familydefault{\sfdefault} 

\setlength{\parindent}{1em}
\setlength{\intextsep}{0.4ex}



\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{fancy}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \noindent
    \let \footnote \thanks
    {\Large \bfseries \@title \par}%
    \vskip 1em%
    }

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >\m@ne
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >\m@ne
       \Large\bfseries \partname\nobreakspace\thepart: \nobreak
     \fi
     \Large \bfseries #2%
     \markboth{}{}\par}%
    \nobreak
    \vskip 0.5ex
    \@afterheading}
\def\@spart#1{%
    {\parindent \z@ \raggedright
     \interlinepenalty \@M
     \normalfont
     \Large \bfseries #1\par}%
     \nobreak
     \vskip 0.3ex
     \@afterheading}

\setcounter{secnumdepth}{0}

\endinput
