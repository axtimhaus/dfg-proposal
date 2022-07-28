%! Class = dfg-proposal
%! Author = Max Weiner <max.weiner@posteo.de>
%! Date = 28.07.22

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dfg-proposal}[A class for writing project porposals to the DFG]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax
\LoadClass[a4paper, captions=tableheading, usegeometry, parskip=half]{scrartcl}

\RequirePackage[left=2.5cm, right=2cm, bottom=1.5cm, top=2.5cm]{geometry}

\RequirePackage{fontspec}
\setsansfont{arial}
\renewcommand{\familydefault}{\sfdefault}

\RequirePackage{amsmath}
\RequirePackage{unicode-math}
\RequirePackage{xcolor}
\RequirePackage{fontsize}

\definecolor{dfgblue}{HTML}{00529E}

\setkomafont{title}{\bfseries\normalsize}
\setkomafont{subtitle}{\bfseries\normalsize}
\setkomafont{subject}{\bfseries\normalsize}
\setkomafont{author}{\bfseries\normalsize}
\setkomafont{date}{\bfseries\normalsize}

\RequirePackage{xpatch}

\subject{Beschreibung des Vorhabens - Projektanträge}

\makeatletter

\renewcommand*{\@maketitle}{%
    \global\@topnum=\z@
    \setparsizes{\z@}{\z@}{\z@\@plus 1fil}\par@updaterelative
    \ifx\@titlehead\@empty \else
    \begin{minipage}[t]{\textwidth}
        \usekomafont{titlehead}{\@titlehead\par}%
    \end{minipage}\par
    \fi
    \null
    \vskip 2em%
    \begin{minipage}{\textwidth}%
        \ifx\@subject\@empty \else
        {\usekomafont{subject}{\@subject \par}}%
        \vskip 1.5em
        \fi
        {%
            \usekomafont{author}{%
%                \begin{tabular}[t]{|l|}
                \@author
%                \end{tabular}\par
            }%
        }%
        \vskip 1.5em
            {\usekomafont{title}{\@title \par}}%
        \vskip .5em
            {\ifx\@subtitle\@empty\else\usekomafont{subtitle}\@subtitle\par\fi}%
        \vskip 1em
        \hrule
    \end{minipage}%
    \par

    \begin{figure}[b]
        \begin{minipage}[b]{0.8\textwidth}
            \bfseries\scriptsizerrr\raggedright
            {\color{dfgblue} Deutsche Forschungsgemeinschaft}\\
            Kennedyallee 40 ∙ 53175 Bonn ∙ Postanschrift: 53170 Bonn\\
            Telefon: + 49 228 885-1 ∙ Telefax: + 49 228 885-2777 ∙ postmaster@dfg.de ∙ www.dfg.de
        \end{minipage}
        \begin{minipage}[b]{0.19\textwidth}
            \raggedleft
            \HUGErrr\bfseries\color{dfgblue} DFG
        \end{minipage}
    \end{figure}
}

\xpatchcmd{\maketitle}{%
    \and{%
\end{tabular}%
\hskip 1em \@plus.17fil%
\begin{tabular}[t]{c}%
}}{\and{\\}}{}{\ddt}

\makeatother

\RequirePackage{booktabs}

\renewenvironment{abstract}{\noindent\begin{addmargin}{2em}
\itshape}{
\end{addmargin}\vspace{1em}}
\newenvironment{keywords}{\noindent\begin{minipage}{\linewidth}
\begin{center}
\textbf{KEYWORDS}\\}{
\end{center}
\end{minipage}}

\setkomafont{section}{\normalsize\bfseries}
\setkomafont{subsection}{\normalsize\bfseries}

\RequirePackage{scrlayer-scrpage}

\setkomafont{pagehead}{\normalfont\scriptsizerrr}

\ihead*{DFG-Vordruck 53.01 – 03/22}
\ohead*{Seite \pagemark{} von max. 17}
\cfoot*{}

\newcommand{\parttwo}{%
\newpage
\ohead*{Seite \pagemark{} von max. 8}
\cfoot*{}
}
