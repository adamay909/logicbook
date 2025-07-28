\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{logicbook}[2021/05/26]

\LoadClass[10pt,oneside]{book}

\usepackage{hyperref}
\usepackage{caption}
%**********************************
%	STYLISTIC STUFF
%**********************************
\usepackage[paperwidth=15cm, paperheight=20cm, lmargin=2cm, rmargin=2cm, 
tmargin=2cm, bmargin=1.5cm]{geometry}

\PassOptionsToPackage{xcolor}{table}
\usepackage[hypcap=false]{caption}
\usepackage{natbib}
\bibliographystyle{chicago-sentence}
\setcitestyle{aysep={}}


\sloppy
\frenchspacing
\hypersetup{hidelinks}

\def\frontmatter{
 \pagestyle{plain}
 \pagenumbering{roman}
}

\def\mainmatter{
 \setcounter{page}{0}
 \pagenumbering{arabic}
 \pagestyle{fancy}
 \fancyhf{}
 \fancyhead[R]{\thepage}
% \fancyhead[C]{\rightmark}
 \fancyhead[C]{\nouppercase\rightmark}
%\fancyhead[RO]{\thepage}
% \fancyhead[CO]{\nouppercase\rightmark}
 \renewcommand{\headrulewidth}{2pt}
}

\setlength{\parindent}{0em}

\setlength{\parskip}{0.5em}

% newpage stuff
\let\oldchapter\chapter
\renewcommand{\chapter}{\cleardoublepage\oldchapter}

\let\stdsection\section
\renewcommand\section{\newpage\stdsection}

