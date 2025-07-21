%! Class = dfg-proposal
%! Author = Max Weiner <max.weiner@posteo.de>
%! Date = 28.07.22

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dfg-proposal}[2025-07-21 A class for writing project porposals to the DFG]

\DeclareKeys{}
\DeclareUnknownKeyHandler{%
    \PassOptionsToClass{\CurrentOption}{scrartcl}
}
\ProcessKeyOptions

\LoadClass[a4paper, captions=tableheading, parskip=half, usegeometry]{scrartcl}

\RequirePackage[left=2.5cm, right=2cm, bottom=1.5cm, top=2.5cm]{geometry}

\RequirePackage{iftex}

\ifLuaTeX
\RequirePackage{fontspec}
\RequirePackage[math-style=ISO]{unicode-math}
\setmainfont{TeX Gyre Termes}
\setsansfont{TeX Gyre Heros}
\setmonofont{TeX Gyre Cursor}
\setmathfont{TeX Gyre Termes Math}
\else
\ifXeTeX
\RequirePackage{fontspec}
\RequirePackage[math-style=ISO]{unicode-math}
\setmainfont{TeX Gyre Termes}
\setsansfont{TeX Gyre Heros}
\setmonofont{TeX Gyre Cursor}
\setmathfont{TeX Gyre Termes Math}
\else
\RequirePackage[T1]{fontenc}
\RequirePackage{tgtermes}
\RequirePackage{tgheros}
\RequirePackage{tgcursor}
\fi
\fi

\renewcommand{\familydefault}{\sfdefault}

\setkomafont{title}{\bfseries\normalsize}
\setkomafont{subtitle}{\bfseries\normalsize}
\setkomafont{subject}{\bfseries\normalsize}
\setkomafont{author}{\bfseries\normalsize}
\setkomafont{date}{\bfseries\normalsize}

\RequirePackage{xpatch}

\subject{Beschreibung des Vorhabens - Projektanträge}

\renewcommand{\maketitle}{%
    \def\and{\\}
    {\usekomafont{subject}{\@subject \par}}
    \vskip 1.5em
    {\usekomafont{author}{\@author}}
    \vskip 1.5em
    {\usekomafont{title}{\@title \par}}
    \ifx\@subtitle\@empty\else
    \vskip .5em
    {\usekomafont{subtitle}\@subtitle\par}
    \fi
    \vskip 1.5em
    \hrule
    \par
    \global\let\and\relax
}

\setkomafont{section}{\normalsize\bfseries}
\setkomafont{subsection}{\normalsize\bfseries}
\setkomafont{subsubsection}{\normalsize\bfseries}
\setkomafont{minisec}{\normalsize\bfseries}

\RequirePackage{scrlayer-scrpage}

\setkomafont{pagehead}{\normalfont\scriptsize}

\ihead*{DFG-Vordruck 53.01 – 03/25}
\ohead*{Seite \pagemark{} von max. 17}
\cfoot*{}
\chead*{\ifx\@date\@empty\else\@date\fi}

\newcommand{\partbreak}{%
    \newpage
    \setcounter{page}{1}
    \ohead*{Seite \pagemark{} von max. 8}
}

\setcounter{secnumdepth}{4}

\RedeclareSectionCommand[
    beforeskip=-3.25ex plus -1ex minus -.2ex,
    afterskip=1.5ex plus .2ex,
]{paragraph}
