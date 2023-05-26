\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sis-dc}[School of Information Systems annual Doctoral Consortium]

\RequirePackage{mathptmx}
\RequirePackage{ragged2e}

\LoadClass{article}
\RequirePackage[left=3cm,right=2cm,top=3cm,bottom=3cm]{geometry}
\RequirePackage{caption}

%constants 
\newcommand\commonparsep{6pt}

% remove indents from paragraphs
\setlength{\parindent}{0pt}
\setlength\parskip{6pt plus 1pt minus 1pt}

% setup title format
\renewcommand{\maketitle}[1][r]{%
    \begin{center}
        \linespread{1.25}
        \setlength\lineskip{6pt}
        {
        \fontsize{16pt}{16pt}\selectfont
        \MakeUppercase{ \@title}
        }
        \setlength{\parskip}{24pt}
        \par
        \setlength{\parskip}{6pt}
        \ifx s#1
        {\fontsize{12pt}{0.5cm}\selectfont \hangindent=0.5cm \begin{flushleft}
            \@author
        \end{flushleft}}
        \fi
    \end{center}
}

% setup abstract 
\renewcommand{\abstractname}{%
    \setlength{\parskip}{18pt}
    \noindent
    \par
    \begin{flushleft}
        {
        \fontsize{14pt}{14pt}\fontseries{}\fontshape{}\selectfont
        Abstract 
        }
    \end{flushleft}
    \setlength{\parskip}{6pt}
    \par
}
\renewcommand\abstract{%
  \abstractname 
  \it 
  \setlength{\parindent}{0cm}
  \fontsize{11pt}{6pt}\fontseries{l}\selectfont
  \setlength{\parskip}{6pt}
  \linespread{1.25}
  \setlength\lineskip{6pt}
}


% setup heading formatter
\renewcommand*{\@seccntformat}[1]{%
    \csname the#1\endcsname\hspace{1.5cm}
}

% setup section font
\renewcommand\section{
    \@startsection {section}{1}{\z@}%
    {-3.5ex \@plus -1ex \@minus -.2ex}%
    {2.3ex \@plus.2ex}%
    {\fontsize{14pt}{14pt}\selectfont \bfseries \MakeUppercase}
}
% setup subsection font
\renewcommand\subsection{
    \renewcommand*{\@seccntformat}[1]{%
        \csname the##1\endcsname\hspace{1.4cm}
    }
    
    \@startsection {subsection}{1}{\z@}%
    {-3.5ex \@plus -1ex \@minus -.2ex}%
    {2.3ex \@plus.2ex}%
    {\fontsize{11pt}{11pt}\selectfont \bfseries }
}
% setup subsubsection font
\renewcommand\subsubsection{
    \renewcommand*{\@seccntformat}[1]{%
        \csname the##1\endcsname\hspace{1.1cm}
    }
    
    \@startsection {subsubsection}{1}{\z@}%
    {-3.5ex \@plus -1ex \@minus -.2ex}%
    {2.3ex \@plus.2ex}%
    {\fontsize{11pt}{11pt}\selectfont \it }
}

% setup caption font and styling
\DeclareCaptionLabelSeparator*{space}{. \hspace{1.5cm}}
\captionsetup{
    position=below,
    justification=RaggedRight,
    singlelinecheck=false,
    format=hang,
    labelfont=it,
    textfont=it,
    indention=0cm,
    labelsep=space}
    
% setup itemize bullet points
\let\olditemize\itemize
\let\endolditemize\enditemize
\renewenvironment{itemize}{%
    \fontsize{11pt}{11pt}\selectfont
    \setlength\itemsep{0pt}
    \setlength{\parskip}{0pt}
    \setlength{\parsep}{0pt}
    \olditemize
}{%
    \setlength\itemsep{0pt}
    \setlength{\parskip}{0pt}
    \setlength{\parsep}{0pt}
    \endolditemize
    \setlength{\parskip}{6pt}
    \setlength{\parsep}{6pt}

}

\let\olditem\item 
\renewcommand{\item}{
    \fontsize{11pt}{11pt}\selectfont
    \setlength\itemsep{0pt} 
    \setlength{\parskip}{0pt}
    \setlength{\parsep}{0pt}
    \olditem
}

\let\oldlabelitemi\labelitemi
% second level bullet icon
\renewcommand{\labelitemi}{
    \oldlabelitemi\hspace{0.5cm}
}

% third level bullet icon
\renewcommand{\labelitemii}{
    {$\circ$}\hspace{0.5cm}
}

% second level bullet icon
\renewcommand{\labelitemiii}{
    {$\circ$}\hspace{0.5cm}
}

% setup normal font
\renewcommand{\normalsize}{\fontsize{11pt}{11pt}\selectfont}



% setup footnote font
\let\oldfootnote\footnote
\renewcommand{\footnote}[1]{\oldfootnote{{\fontsize{9pt}{9pt}\selectfont#1}}}

% setup table
\let\oldtable\table 
\let\oldendtable\endtable
\renewenvironment{table}[1][\@nil]{%
    \def\tmp{#1}%
    \ifx\tmp\@nnil
        \oldtable
    \else
        \oldtable[#1]
    \fi
    \hfill \\
}{%
    \oldendtable
}
