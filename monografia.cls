% MONOGRAFIA.CLS
%
%
%   Licence: LPPL (LaTeX Project Public License)
%     You can change this file in the terms of LPPL
%     (http://www.latex-project.org/lppl.html)
%
%   Licenca: LPPL (LaTeX Project Public License)
%     Esta licenca diz basicamente que se voce editar o codigo desta
%     classe, mesmo localmente (no seu micro), voce DEVE RENOMEAR o arquivo
%     da classe!! Como sempre, nao eh dada nenhuma garantia.
%     Para o texto completo da licenca, favor seguir o endereco
%        http://www.latex-project.org/lppl.html
%
%   Classe para confeccao de monografias, dissertacoes e tese
%   de acordo com as normas da exigidas pela Universidade Federal
%   de Juiz de Fra, tendo com parametro as diretrizes da Associacao Brasileira
%   de Normas Tecnicas (ABNT). Esta classe foi
%   desenvolvidas pelo prof. Maxwell Mariano de Barros do DEMAT/UFMA
%   (http://www.demat.ufma.br) e alterada pelo prof. Jairo Francisco de Souza do DCC/UFJF
%   A classe monografia foi obtida modificando a classe report, fazendo
%   com que a mesma gere a capa as folhas de rosto e de aprovacao das
%   monografias e dissertacoes.
%
%   Author (class): Maxwell Mariano de Barros
%      Capa (cover) and Folha de rosto (face page): defining commands
%        \instituicao
%        \autor
%        \grau
%        \tipo
%        \orientador
%        \ttorientador
%        \examinadorum
%        \examinadordois
%        \ttexaminadorum
%        \ttexaminadordois
%        \titulo
%        \ano
%        \local
%        \data
%%
%% This file was generated from file(s) of the LaTeX base system.
%% --------------------------------------------------------------
%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%%
%% This file may only be distributed together with a copy of the LaTeX
%% base system. You may however distribute the LaTeX base system without
%% such generated files.
%%
%% The list of all files belonging to the LaTeX base distribution is
%% given in the file `manifest.txt'. See also `legal.txt' for additional
%% information.
%%
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{monografia}
              [2001/04/21 v1.4e
 Standard LaTeX document class]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\@ptsize{}
\newif\if@restonecol
\newif\if@titlepage
\@titlepagetrue
\newif\if@openright
\if@compatibility\else
\DeclareOption{a4paper}
   {
    \setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}}
\DeclareOption{a5paper}
   {\setlength\paperheight {210mm}%
    \setlength\paperwidth  {148mm}}
\DeclareOption{b5paper}
   {\setlength\paperheight {250mm}%
    \setlength\paperwidth  {176mm}}
\DeclareOption{letterpaper}
   {\setlength\paperheight {11in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{legalpaper}
   {\setlength\paperheight {14in}%
    \setlength\paperwidth  {8.5in}}
\DeclareOption{executivepaper}
   {\setlength\paperheight {10.5in}%
    \setlength\paperwidth  {7.25in}}
\DeclareOption{landscape}
   {\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}}
\fi
\if@compatibility
  \renewcommand\@ptsize{0}
\else
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
\if@compatibility\else
\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
\fi
\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\if@compatibility\else
\DeclareOption{final}{\setlength\overfullrule{0pt}}
\fi
\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
\DeclareOption{notitlepage}{\@titlepagefalse}
\fi
\if@compatibility
\else
\DeclareOption{openright}{\@openrighttrue}
\DeclareOption{openany}{\@openrightfalse}
\fi
\if@compatibility\else
\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}
\DeclareOption{leqno}{\input{leqno.clo}}
\DeclareOption{fleqn}{\input{fleqn.clo}}
\DeclareOption{openbib}{%
  \AtEndOfPackage{%
   \renewcommand\@openbib@code{%
      \advance\leftmargin\bibindent
      \itemindent -\bibindent
      \listparindent \itemindent
      \parsep \z@
      }%
   \renewcommand\newblock{\par}}%
}




\ExecuteOptions{letterpaper,10pt,oneside,onecolumn,final,openany}
\ProcessOptions
\input{size1\@ptsize.clo}
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}
\renewcommand\baselinestretch{1.5}
\setlength\parskip{0\p@ \@plus \p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\setcounter{topnumber}{2}
\renewcommand\topfraction{.7}
\setcounter{bottomnumber}{1}
\renewcommand\bottomfraction{.3}
\setcounter{totalnumber}{3}
\renewcommand\textfraction{.2}
\renewcommand\floatpagefraction{.5}
\setcounter{dbltopnumber}{2}
\renewcommand\dbltopfraction{.7}
\renewcommand\dblfloatpagefraction{.5}
\if@twoside
  \def\ps@headings{%
      \let\@oddfoot\@empty\let\@evenfoot\@empty
      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
      \def\@oddhead\newcommand{\ps@header}{%
    \renewcommand{\@oddfoot}{}%
    \renewcommand{\@evenfoot}{}%
    \renewcommand{\@oddhead}%
      {{\rightmarkformat\rightmark}\hfill{\thepageformat\thepage}}%
    \renewcommand{\@evenhead}%
         {{\thepageformat\thepage}\hfill{\leftmarkformat\leftmark}}%
  % Para \chapter* mostrar o cabecalho
    \let\@mkboth\markboth%
  % Definindo a maneira como o comando o \chapter marca o cabecalho
    \renewcommand{\chaptermark}[1]{%
      \markboth%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter{}  %
          \fi%
          ##1}%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter{}  %
          \fi%
          ##1}%
    }%
    \renewcommand{\sectionmark}[1]{%
      \markright{%
        \ifnum \c@secnumdepth >\z@%
          \thesection\ \ %
        \fi%
        ##1}%
    }%
  }%

  %%  Defining pagestyle plainheader
  %
  \newcommand{\ps@plainheader}{%
    \renewcommand{\@oddfoot}{}%
    \renewcommand{\@evenfoot}{}%
    \renewcommand{\@oddhead}{\hfill{\thepageformat\thepage}}%
    \renewcommand{\@evenhead}{{\thepageformat\thepage}\hfill}%
  % Para \chapter* mostrar o cabecalho
    \let\@mkboth\markboth%
  % Definindo a maneira como o comando o \chapter marca o cabecalho
    \renewcommand{\chaptermark}[1]{%
      \markboth%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter\ \ %
          \fi%
          ##1}%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter\ \ %
          \fi%
          ##1}%
    }%
    \renewcommand{\sectionmark}[1]{%
      \markright{%
        \ifnum \c@secnumdepth >\z@%
          \thesection\ \ %
        \fi%
        ##1}%
    }%
  }%

  %%  Defining pagestyle ruledheader
  %
  \newcommand{\ps@ruledheader}{%
    \renewcommand{\@oddfoot}{}%
    \renewcommand{\@evenfoot}{}%
    \renewcommand{\@oddhead}%
       {\underline{\makebox[\textwidth]{\raisebox{-.5ex}{}%
         {\rightmarkformat\rightmark}\hfill{\thepageformat\thepage}}}}%
    \renewcommand{\@evenhead}%
       {\underline{\makebox[\textwidth]{\raisebox{-.5ex}{}%
         {\thepageformat\thepage}\hfill{\leftmarkformat\leftmark}}}}%
  % Para \chapter* mostrar o cabecalho
    \let\@mkboth\markboth%
  % Definindo a maneira como o comando o \chapter marca o cabecalho
    \renewcommand{\chaptermark}[1]{%
      \markboth%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter\ \ %
          \fi%
          ##1}%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter\ \ %
          \fi%
          ##1}%
    }%
    \renewcommand{\sectionmark}[1]{%
      \markright{%
        \ifnum \c@secnumdepth >\z@%
          \thesection\ \ %
        \fi%
        ##1}%
    }%
  }%

 }%
 {}%{{\slshape\rightmark}\hfil\thepage}%
      \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markboth {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
            %\@chapapp\ \thechapter. \ %
        \fi
        ##1}}{}}%
    \def\sectionmark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\z@
          \thesection. \ %
        \fi
        ##1}}}}
\else
  \def\ps@headings{%
    \let\@oddfoot\@empty
    \def\@oddhead{{\slshape}\hfil\thepage}%
    \let\@mkboth\markboth
    \def\chaptermark##1{%
      \markright {\MakeUppercase{%
        \ifnum \c@secnumdepth >\m@ne
            %\@chapapp\ \thechapter. \ %
        \fi
        ##1}}}}
\fi
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble
    }
%%%%%%%%%%%%%%%Novas Definicoes%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\def\grau#1{\gdef\@grau{#1}}
\def\tipo#1{\gdef\@tipo{#1}}
\def\diploma#1{\gdef\@diploma{#1}}
\def\departamento#1{\gdef\@departamento{#1}}
\def\bacharelado{\grau{BACHAREL} \tipo{Monografia} \diploma{Bacharelado} }
\def\licenciatura{\grau{LICENCIADO} \tipo{Monografia} \diploma{Licenciatura} }
\def\especializacao{\grau{ESPECIALISTA} \tipo{Monografia} \es@ptrue \diploma{Especializa\c{c}\~ao} }
\def\mestrado{\grau{MESTRE} \tipo{Disserta\c{c}\~{a}o} \diploma{Mestrado} \ps@dtrue}
\def\doutorado{\grau{DOUTOR} \tipo{Tese} \ph@dtrue \diploma{Doutorado} \ps@dtrue}


%\def\imgcurso#1{\gdef\@imgcurso{#1}}
%\def\imginstituicao#1{\gdef\@imginstituicao{#1}}
\def\inserirlogo{ \lg@ltrue }


\def\autor#1{\gdef\@autor{#1}}
\def\titulo#1{\gdef\@titulo{#1}}
\def\subtitulo#1{\gdef\@subtitulo{#1}\sb@ttrue}
\def\ultimonome#1{\gdef\@ultimonome{#1}}
\def\nome#1{\gdef\@nome{#1}}
\def\grau#1{\gdef\@grau{#1}}
\def\curso#1{\gdef\@curso{#1}}
\def\areas#1{\gdef\@areas{#1}}
\def\CDU#1{\gdef\@CDU{#1}}
\def\npaginas#1{\gdef\@npaginas{#1}}
\def\ano#1{\gdef\@ano{#1}}
\def\cidade#1{\gdef\@cidade{#1}}
\def\mes#1{\gdef\@mes{#1}}
\def\dia#1{\gdef\@dia{#1}}
\def\orientador#1{\gdef\@orientador{#1}}
\def\ttorientador#1{\gdef\@ttorientador{#1}}
\def\setorientador{%
     Orientador: \@orientador \\ \footnotesize\@ttorientador}
\def\ttcoorientador#1{\gdef\@ttcoorientador{#1}}
\def\coorientador#1{\gdef\@coorientador{#1}\co@dtrue}
\def\setcoorientador{%
     Coorientador: \@coorientador \\ \footnotesize\@ttcoorientador}
\def\examinadorum#1{\gdef\@examinadorum{#1}}
\def\ttexaminadorum#1{\gdef\@ttexaminadorum{#1}}
\def\examinadordois#1{\gdef\@examinadordois{#1}}
\def\ttexaminadordois#1{\gdef\@ttexaminadordois{#1}}
\def\examinadortres#1{\gdef\@examinadortres{#1}}
\def\ttexaminadortres#1{\gdef\@ttexaminadortres{#1}}
\def\examinadorquatro#1{\gdef\@examinadorquatro{#1}}
\def\ttexaminadorquatro#1{\gdef\@ttexaminadorquatro{#1}}
\def\instituicao#1{\gdef\@instituicao{#1}}
\def\sigla#1{\gdef\@sigla{#1}}%
\def\unidadeacademica#1{\gdef\@unidadeacademica{#1}}
\def\setesp{%
        \sc Especializa\c{c}\~{a}o em \@curso}
\def\setpos{%
         \sc P\'{o}s-gradua\c{c}\~{a}o em \@curso}
\def\setcurso{%
         \sc \@diploma \space em \@curso}
\def\assinaturaum{%
\begin{spacing}{1}
            % \rule{9.0cm}{0.1mm} \\
             {\@orientador \\ \@ttorientador}\\
             \vfill
            % \rule{9.0cm}{0.1mm} \\
             \ifco@d
                {\@coorientador \\ \@ttcoorientador}\\
                \vfill
             \fi
            % \rule{9.0cm}{0.1mm} \\
             {\@examinadorum \\ \@ttexaminadorum}\\
             \vfill
             %\rule{9.0cm}{0.1mm} \\
             {\@examinadordois \\ \@ttexaminadordois}\\
             \vfill
             %\rule{9.0cm}{0.1mm} \\
             {\@examinadortres \\ \@ttexaminadortres}\\
             \vfill
             %\rule{9.0cm}{0.1mm} \\
             {\@examinadorquatro \\ \@ttexaminadorquatro}
\end{spacing}}
\def\assinaturadois{%
 \begin{spacing}{1}
            % \rule{9.0cm}{0.1mm} \\
             {\@orientador \\ \@ttorientador}\\
             \vfill
            % \rule{9.0cm}{0.1mm} \\
             \ifco@d
                {\@coorientador \\ \@ttcoorientador}\\
                \vfill
             \fi
             %\rule{9.0cm}{0.1mm} \\
             {\@examinadorum \\ \@ttexaminadorum}\\
             \vfill
             %\rule{9.0cm}{0.1mm} \\
             {\@examinadordois \\ \@ttexaminadordois}
 \end{spacing}}
\def\keywords#1{\gdef\@keywords{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% bibliography


\newif\ifph@d           \ph@dfalse
\newif\ifco@d           \co@dfalse
\newif\ifps@d           \ps@dfalse
\newif\ifsb@t           \sb@tfalse
\newif\ifre@s           \re@sfalse
\newif\ifes@p           \es@pfalse
\newif\iflg@l           \lg@lfalse
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\if@titlepage
  \newcommand\maketitle{\begin{titlepage}%
  %%
  \lineskip .0em
%  \begin{center}%
%  {\rmfamily \sc
  %\begin{tabular}{p{20.0cm}}
%  \@instituicao\\
%  \@unidadeacademica\\
%{\ifps@d
%   \setpos
%     \else
%       \ifes@p
%       \setesp
%       \else
%       \setcurso
%       \fi
%\fi}
%\hfill
%\end{tabular}
%  }
%  \end{center}

{\iflg@l
{
\begin{figure}[ht]
\begin{minipage}[b]{0.1\textwidth}
\scalebox{0.65}{\includegraphics{./figs/logoCurso.jpg}}
\vspace{11em}
\end{minipage}
\hfill
\begin{minipage}[b]{0.3\textwidth}
\scalebox{0.6}{\includegraphics{./figs/logoInstituicao.png}}
\vspace{11em}
\end{minipage}
\end{figure}
}
\else
{

  \begin{center}%
  {\rmfamily \sc
  \@instituicao\\
  \@unidadeacademica\\
{\ifps@d
   \setpos
     \else
       \ifes@p
       \setesp
       \else
       \setcurso
       \fi
\fi}
\hfill
  }
  \end{center}
\vspace{13em}



}\fi}


\begin{center}

%\begin{figure}[t]
% \begin{raggedleft}
%   \includegraphics{./figs/logo-ufjf1.png} % logo-ufjf1.png: 196x111 pixel, 72dpi, 6.91x3.92 cm, bb=0 0 196 111
% \end{raggedleft}
%\end{figure}

  \ifsb@t
     {\LARGE \textbf{\@titulo} }\\
     {\Large  \textbf{\@subtitulo} }\\
    \else
     {\LARGE \textbf{\@titulo} }\\
  \fi
  \vspace{4.3em}%
    {\rmfamily \Large \textbf{\@autor} \par}%
       \vfill
    {\rmfamily \MakeUppercase{\@cidade} \\ \MakeUppercase{\@mes}, \@ano }%
  \end{center}
  \end{titlepage}
  %%--------------------------------------------------
  \begin{titlepage}
  \lineskip .0em
    \begin{center}
  \vspace{5.0em}%
  \ifsb@t
     {\LARGE  \textbf{\@titulo} }\\
     {\Large  \textbf{\@subtitulo} }\\
    \else
     {\LARGE  \textbf{\@titulo} }\\
  \fi
  \vspace{0.5em}%
    {\rmfamily \Large  \textsc{\@autor} \par}%
  \vspace{12.0em}
  \end{center}
 \begin{flushright}
  {        \@instituicao \\
           \@unidadeacademica \\
           \@departamento \\
           \@diploma \space em \@curso\ \\
  }
 \end{flushright}
 \begin{flushright}
 \ifco@d
 { Orientador: \@orientador}\\

 { Coorientador: \@coorientador}
    \else
 {  Orientador: \@orientador}
 \fi
 \end{flushright}
 \vfill
 \begin{center}
 {\rmfamily \MakeUppercase{\@cidade} \\ \MakeUppercase{\@mes}, \@ano}
 \end{center}
 \end{titlepage}%
 %%-----------------------------------------------
% \begin{titlepage}
% \vfil\null
% \lineskip .0em
% \vfill
% \fbox{
%   \begin{tabular}{p{12.0cm}}
%       \@ultimonome, \@nome                      \\
%       \@titulo\ / \@nome\ \@ultimonome\ -  \@ano \\
%       \@npaginas .p                \\
%                                     \\
%       \@areas . I.T\'{\i}tulo. \\
%       \hfill CDU \@CDU
%    \end{tabular} }
% \end{titlepage}
 %%-------------------------------------------------------
 \begin{titlepage}
 \lineskip .0em
    \begin{center}
    \ifsb@t
     {\large  \MakeUppercase{\@titulo} }\\
     {\large  \@subtitulo }
    \else
     {\Large  \textsc{\@titulo} }
   \fi
  \vspace{1.2em}
   \\ {\rmfamily \large \@autor \par}%
  \end{center}

  \vspace{1.8em}

  \begin{raggedleft}
  { \MakeUppercase{\@tipo\ submetida ao corpo docente do \@unidadeacademica\ da \@instituicao, como
           parte integrante dos requisitos necess\'arios para a obten\c{c}\~ao
           do grau de \@grau\ em \@curso.} }
  \end{raggedleft}
  \vfill
  {\rmfamily Aprovada por:} \\
  \vfill
  \begin{flushright}
    \ifph@d
       \assinaturaum
    \else
       \assinaturadois
    \fi
 \end{flushright}
  \vfill

 \begin{center}
 \MakeUppercase \@cidade \\
 \MakeUppercase{\@dia\ de \@mes, \@ano}
 \end{center}
 \end{titlepage}
 %%-----------------------------------------------------------
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\else
\newcommand\maketitle{\par
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
    \thispagestyle{plain}\@thanks
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
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
    {\LARGE \@title \par}%
    \vskip 1.5em%
    {\large
      \lineskip .5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 1em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1.5em}
\fi
\parindent=1.5cm
\topmargin-0.5cm
\voffset-0.5cm
\footskip1cm
\oddsidemargin0.5cm
\evensidemargin0cm
\textwidth16cm
\textheight25.5cm
\parskip0.0pt
\headsep.4cm
\marginparwidth 40pt \marginparsep 10pt
\newcommand*\chaptermark[1]{}
\setcounter{secnumdepth}{2}
\newcounter {part}
\newcounter {chapter}
\newcounter {section}[chapter]
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@arabic\c@chapter}
\renewcommand \thesection {\thechapter.\@arabic\c@section}
\renewcommand\thesubsection   {\thesection.\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection .\@arabic\c@subsubsection}
\renewcommand\theparagraph    {\thesubsubsection.\@arabic\c@paragraph}
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}
\newcommand\@chapapp{\chaptername}
\newcommand\part{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi
  \thispagestyle{plain}%
  \if@twocolumn
    \onecolumn
    \@tempswatrue
  \else
    \@tempswafalse
  \fi
  \null\vfil
  \secdef\@part\@spart}

\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge\bfseries \partname\nobreakspace\thepart
       \par
       \vskip 20\p@
     \fi
     \LARGE \bfseries #2\par}%
    \@endpart}
\def\@spart#1{%
    {\centering
     \interlinepenalty \@M
     \normalfont
     \LARGE \bfseries #1\par}%
    \@endpart}
\def\@endpart{\vfil\newpage
              \if@twoside
               \if@openright
                \null
                \thispagestyle{empty}%
                \newpage
               \fi
              \fi
              \if@tempswa
                \twocolumn
              \fi}
\newcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{headings}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
\doublespacing
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\def\@makechapterhead#1{%
  \vspace*{10\p@}%
    {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \LARGE\bfseries %\@chapapp
        \thechapter \space
        %\par\nobreak
        %\vskip 20\p@
    \fi
    \interlinepenalty\@M
    \LARGE \bfseries #1\par\nobreak
    \vskip 10\p@
  }}
\def\@schapter#1{\if@twocolumn
                   \@topnewpage[\@makeschapterhead{#1}]%
                 \else
                   \@makeschapterhead{#1}%
                   \@afterheading
                 \fi}
\def\@makeschapterhead#1{%
    \vspace*{10\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
   \begin{center} \Large \bfseries  #1\par\nobreak\end{center}
    \vskip 10\p@
  }}
\newcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\large\bfseries}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}
\if@twocolumn
  \setlength\leftmargini  {2em}
\else
  \setlength\leftmargini  {2.5em}
\fi
\leftmargin  \leftmargini
\setlength\leftmarginii  {2.2em}
\setlength\leftmarginiii {1.87em}
\setlength\leftmarginiv  {1.7em}
\if@twocolumn
  \setlength\leftmarginv  {.5em}
  \setlength\leftmarginvi {.5em}
\else
  \setlength\leftmarginv  {1em}
  \setlength\leftmarginvi {1em}
\fi
\setlength  \labelsep  {.5em}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\renewcommand\theenumi{\@arabic\c@enumi}
\renewcommand\theenumii{\@alph\c@enumii}
\renewcommand\theenumiii{\@roman\c@enumiii}
\renewcommand\theenumiv{\@Alph\c@enumiv}
\newcommand\labelenumi{\theenumi.}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{\textbullet}
\newcommand\labelitemii{\normalfont\bfseries \textendash}
\newcommand\labelitemiii{\textasteriskcentered}
\newcommand\labelitemiv{\textperiodcentered}
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
\if@titlepage
  \newenvironment{abstract}{%
      \titlepage
    	\doublespacing
      \null\vfil
      \@beginparpenalty\@lowpenalty
      \begin{center}%
        \bfseries \abstractname
        \@endparpenalty\@M
      \end{center}}%
     {\par\vfil\null\endtitlepage}
\else
  \newenvironment{abstract}{%
      \if@twocolumn
        \section*{\abstractname}%
      \else
        \small
        \begin{center}%
          {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
        \end{center}%
        \quotation
      \fi}
      {\if@twocolumn\else\endquotation\fi}
\fi
\def\agradecimento#1{%
    \chapter*{#1}
    \doublespacing
    \thispagestyle{empty}
    \addcontentsline{loc}{chapter}{#1}
    }
\def\resumo#1{%
    \chapter*{#1}
    \thispagestyle{empty}
    \doublespacing
    \addcontentsline{loc}{chapter}{#1}}
\newenvironment{epigrafe}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   .0em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \setlength{\leftmargin}{4cm}
                        \advance\leftmargin 9.0em}%
                        \it
                \thispagestyle{empty}
                \item\relax\vfil\null\vfill}
               {\endlist\newpage}
\newenvironment{dedicatoria}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   .0em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \setlength{\leftmargin}{3cm}
                        \advance\leftmargin 9.0em}%
                        \it
                \thispagestyle{empty}
                \item\relax\vfil\null\vfill}
               {\endlist\newpage}

\newenvironment{verse}
               {\let\\\@centercr
                \list{}{\itemsep      \z@
                        \itemindent   -1.5em%
                        \listparindent\itemindent
                        \rightmargin  \leftmargin
                        \advance\leftmargin 1.5em}%
                \item\relax}
               {\endlist}
\newenvironment{quotation}
               {\list{}{\listparindent 1.5em%
                        \itemindent    \listparindent
                        \rightmargin   \leftmargin
                        \parsep        \z@ \@plus\p@}%
                \item\relax}
               {\endlist}
\newenvironment{quote}
               {\list{}{\rightmargin\leftmargin}%
                \item\relax}
               {\endlist}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\providecommand{\setstretche}[1]{\def\baselinestretch{#1}\@currsize}
\newenvironment{citado}%
  {%
   \small
   \list{}{%
       \setstretche{}
       \setlength\normallineskip{1cm}
       \setlength{\listparindent}{0cm}%
       \setlength{\itemindent}{\listparindent}%
       \setlength{\rightmargin}{0cm}%
       \setlength{\leftmargin}{4cm}%
       \setlength{\parsep}{0pt}}%
    \item\relax}%
  {\endlist }

\newenvironment{citacao}%
  {\begin{citado}}%
  {\end{citado}}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{coment}%
  {%
   %\small
   \list{}{%
       \setstretche{1.2}
       \setlength\normallineskip{1cm}
       \setlength{\listparindent}{0cm}%
       \setlength{\itemindent}{\listparindent}%
       \setlength{\rightmargin}{0cm}%
       \setlength{\leftmargin}{7cm}%
       \setlength{\parsep}{0pt}}%
    \item\relax}%
  {\endlist }

\newenvironment{comentario}%
  {\begin{coment}}%
  {\end{coment}}%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\if@compatibility
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\z@
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
    }
\else
\newenvironment{titlepage}
    {%
      \if@twocolumn
        \@restonecoltrue\onecolumn
      \else
        \@restonecolfalse\newpage
      \fi
      \thispagestyle{empty}%
      \setcounter{page}\@ne
    }%
    {\if@restonecol\twocolumn \else \newpage \fi
     \if@twoside\else
        \setcounter{page}\@ne
     \fi
    }
\fi
\newcommand\appendix{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Alph\c@chapter}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\annex{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \gdef\@chapapp{\appendixname}%
  \gdef\thechapter{\@Roman\c@chapter}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\@addtoreset {equation}{chapter}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand\theequation
  {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@equation}
\newcounter{figure}[chapter]
\renewcommand \thefigure
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@figure}
\def\fps@figure{tbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}[chapter]
\renewcommand \thetable
     {\ifnum \c@chapter>\z@ \thechapter.\fi \@arabic\c@table}
\def\fps@table{tbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{2}
\newcommand\tableofcontents{%
    \singlespacing
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\contentsname
        \thispagestyle{empty}
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@part[2]{%
  \ifnum \c@tocdepth >-2\relax
    \addpenalty{-\@highpenalty}%
    \addvspace{2.25em \@plus\p@}%
    \setlength\@tempdima{3em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      {\leavevmode
       \large \bfseries #1\hfil \hb@xt@\@pnumwidth{\hss #2}}\par
       \nobreak
         \global\@nobreaktrue
         \everypar{\global\@nobreakfalse\everypar{}}%
    \endgroup
  \fi}
\newcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newcommand*\l@section{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand*\l@subsection{\@dottedtocline{2}{3.8em}{3.2em}}
\newcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}
\newcommand\listoffigures{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \thispagestyle{empty}
      \addcontentsline{toc}{chapter}{\listfigurename}
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\newcommand*\l@figure{\@dottedtocline{1}{1.5em}{2.3em}}
\newcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
    \thispagestyle{empty}
    \addcontentsline{toc}{chapter}{\listtablename}
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\let\l@table\l@figure
\newdimen\bibindent
\setlength\bibindent{1.5em}
\newenvironment{thebibliography}[1]
     {\chapter*{\bibname}%
     \thispagestyle{ruledheader}
     \addcontentsline{toc}{chapter}{\bibname}
      \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty
\newenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \twocolumn[\@makeschapterhead{\indexname}]%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
                \thispagestyle{plain}\parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\@idxitem{\par\hangindent 40\p@}
\newcommand\subitem{\@idxitem \hspace*{20\p@}}
\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
\renewcommand\footnoterule{%
  \kern-3\p@
  \hrule\@width.4\columnwidth
  \kern2.6\p@}
%\@addtoreset{footnote}{chapter}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\bibname{Bibliography}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\chaptername{Chapter}
\newcommand\appendixname{Appendix}
\newcommand\annexname{Annex}
\newcommand\abstractname{Abstract}
\newcommand\resumoname{Resumo}
\newcommand\resumename{R\'{e}sum\'{e}}
\newcommand\summaryname{Abstract}
\newcommand\orientname{Orientador}
\newcommand\epigrafename{ }
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\ps@header}{%
    \renewcommand{\@oddfoot}{}%
    \renewcommand{\@evenfoot}{}%
    \renewcommand{\@oddhead}{}%
      {{\rightmark}\hfill{\thepage}}%
    \renewcommand{\@evenhead}%
         {{\thepageformat\thepage}\hfill{\leftmarkformat\leftmark}}%
  % Para \chapter* mostrar o cabecalho
    \let\@mkboth\markboth%
  % Definindo a maneira como o comando o \chapter marca o cabecalho
    \renewcommand{\chaptermark}[1]{%
      \markboth%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter{}  %
          \fi%
          ##1}%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter{}  %
          \fi%
          ##1}%
    }%
    \renewcommand{\sectionmark}[1]{%
      \markright{%
        \ifnum \c@secnumdepth >\z@%
          \thesection\ \ %
        \fi%
        ##1}%
    }%
  }%

  %%  Defining pagestyle plainheader
  %
  \newcommand{\ps@plainheader}{%
    \renewcommand{\@oddfoot}{}%
    \renewcommand{\@evenfoot}{}%
    \renewcommand{\@oddhead}{\hfill{\thepage}}%
    \renewcommand{\@evenhead}{{\thepage}\hfill}%
  % Para \chapter* mostrar o cabecalho
    \let\@mkboth\markboth%
  % Definindo a maneira como o comando o \chapter marca o cabecalho
    \renewcommand{\chaptermark}[1]{%
      \markboth%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter\ \ %
          \fi%
          ##1}%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter\ \ %
          \fi%
          ##1}%
    }%
    \renewcommand{\sectionmark}[1]{%
      \markright{%
        \ifnum \c@secnumdepth >\z@%
          \thesection\ \ %
        \fi%
        ##1}%
    }%
  }%

  %%  Defining pagestyle ruledheader
  %
  \newcommand{\ps@ruledheader}{%
    \renewcommand{\@oddfoot}{}%
    \renewcommand{\@evenfoot}{}%
    \renewcommand{\@oddhead}%
       {\underline{\makebox[\textwidth]{\raisebox{-.5ex}{}%
         {\rightmark}\hfill{\thepage}}}}%
    \renewcommand{\@evenfoot}%
       {\underline{\makebox[\textwidth]{\raisebox{-.5ex}{}%
         {\thepageformat\thepage}\hfill{\leftmarkformat\leftmark}}}}%
  % Para \chapter* mostrar o cabecalho
    \let\@mkboth\markboth%
  % Definindo a maneira como o comando o \chapter marca o cabecalho
    \renewcommand{\chaptermark}[1]{%
      \markboth%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter\ \ %
          \fi%
          ##1}%
         {\ifnum \c@secnumdepth >\m@ne%
              \thechapter\ \ %
          \fi%
          ##1}%
    }%
    \renewcommand{\sectionmark}[1]{%
      \markright{%
        \ifnum \c@secnumdepth >\z@%
          \thesection\ \ %
        \fi%
        ##1}%
    }%
  }%


 {}%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\endinput
%%
%% End of file `monografia.cls'.
