%%
%% This is file `xduthesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% xduthesis.dtx  (with options: `cls')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2008-2014 by Fei Qi <fred.qi@ieee.org>
%% 
%% This file may be distributed and/or modified under the conditions of the LaTeX
%% Project Public License, either version 1.3a of this license or (at your option)
%% any later version. The latest version of this license is in:
%% 
%% http://www.latex-project.org/lppl.txt
%% 
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%% 
%% To produce the documentation run the original source files ending with `.dtx'
%% through LaTeX.
%% 
%% \iffalse
%%  Local Variables:
%%  mode: doctex
%%  TeX-master: t
%%  End:
%% \fi
%% \iffalse meta-comment
%%
%% Copyright (C) 2008-2014 by Fred Qi <fred.qi@gmail.com>
%%
%% This file may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3a
%% of this license or (at your option) any later version.
%% The latest version of this license is in:
%%
%% http://www.latex-project.org/lppl.txt
%%
%% and version 1.3a or later is part of all distributions of LaTeX
%% version 2004/10/01 or later.
%%
%% \fi

\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{xduthesis}
[2009/06/06 0.2 Xidian University Thesis Template]
\hyphenation{XDU-Thesis}
\def\xduthesis{$\mathbb{XDU}$-$\mathcal{THESIS}$}
\def\version{1.0.0}
\newif\ifxdu@bachelor\xdu@bachelorfalse
\newif\ifxdu@master\xdu@masterfalse
\newif\ifxdu@masterpro\xdu@masterprofalse
\newif\ifxdu@doctor\xdu@doctorfalse
\newif\ifxdu@secret\xdu@secretfalse
\newif\ifxdu@english\xdu@englishfalse
\newif\ifxdu@mkabstract\xdu@mkabstractfalse
\newif\ifxdu@print\xdu@printfalse
\newif\ifxdu@msfonts\xdu@msfontsfalse
\DeclareOption{bachelor}{\xdu@bachelortrue}
\DeclareOption{master}{\xdu@mastertrue}
\DeclareOption{masterpro}{\xdu@masterprotrue}
\DeclareOption{doctor}{\xdu@doctortrue}
\DeclareOption{secret}{\xdu@secrettrue}
\DeclareOption{english}{\xdu@englishtrue}
\DeclareOption{print}{\xdu@printtrue}
\DeclareOption{msfonts}{\xdu@msfontstrue}
\DeclareOption{adobefonts}{\xdu@msfontsfalse}
\AtEndOfClass{%
  \ifxdu@doctor\relax\else
    \ifxdu@bachelor\relax\else
      \ifxdu@master\relax\else
        \ifxdu@masterpro\relax\else
          \ClassError{xduthesis}%
          {Please specify a thesis option: bachelor, master, masterpro or doctor.}{}
        \fi
      \fi
    \fi
  \fi}
\ExecuteOptions{}
\ProcessOptions
\ifxdu@print
\LoadClass[12pt, a4paper, openright]{book}
\else
\LoadClass[12pt, a4paper, openany]{book}
\fi
\RequirePackage{calc}
\RequirePackage[numbers,super,sort&compress]{natbib}
\ifxdu@print
\RequirePackage[xetex,colorlinks=true,allcolors=black]{hyperref}
\else
\RequirePackage[xetex,colorlinks=true]{hyperref}
\fi
\RequirePackage{indentfirst}
\RequirePackage[neverdecrease]{paralist}
\RequirePackage{amsmath, amssymb}
\RequirePackage{graphicx}
\RequirePackage{subfig}
\RequirePackage[normalem]{ulem}
\RequirePackage{ifthen}
\RequirePackage{titlesec,titletoc}
\RequirePackage[BoldFont]{xeCJK}
\punctstyle{quanjiao}
\def\CJK@null{\kern\CJKnullspace\Unicode{48}{7}\kern\CJKnullspace}
\defaultfontfeatures{Mapping=tex-text} % after fontspec
\ifxdu@msfonts
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{KaiTi_GB2312}
\setCJKfamilyfont{song}{SimSun}
\setCJKfamilyfont{hei}{SimHei}
\setCJKfamilyfont{fs}{FangSong_GB2312}
\setCJKfamilyfont{kai}{KaiTi_GB2312}
\setCJKfamilyfont{li}{Adobe Kaiti Std}
\setCJKfamilyfont{you}{LiSu}
\else
\setCJKmainfont{Adobe Song Std}
\setCJKsansfont{Adobe Heiti Std}
\setCJKfamilyfont{song}{Adobe Song Std}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\fi
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier Std}
\RequirePackage{xunicode,metalogo}
\renewcommand\frontmatter{%
  \xdu@clearpage%
  \@mainmatterfalse
  \ifxdu@bachelor\pagenumbering{roman}\else\pagenumbering{Roman}\fi
  \pagestyle{xdu@front}}
\renewcommand\mainmatter{%
  \xdu@clearpage
  \@mainmattertrue
  \pagenumbering{arabic}
  \pagestyle{xdu@headings}}
\renewcommand\backmatter{%
  \xdu@clearpage
  \@mainmattertrue}
\newcommand{\song}{\CJKfamily{song}} % 宋体
\def\songti{\song}
\newcommand{\hei}{\CJKfamily{hei}} % 黑体
\def\heiti{\hei}
\newlength\xdu@linespace
\newcommand{\xdu@choosefont}[2]{%
   \setlength{\xdu@linespace}{#2*\real{#1}}%
   \fontsize{#2}{\xdu@linespace}\selectfont}
\def\xdu@define@fontsize#1#2{%
  \expandafter\newcommand\csname #1\endcsname[1][\baselinestretch]{%
    \xdu@choosefont{##1}{#2}}}
\xdu@define@fontsize{chuhao}{42bp}
\xdu@define@fontsize{xiaochu}{36bp}
\xdu@define@fontsize{yihao}{26bp}
\xdu@define@fontsize{xiaoyi}{24bp}
\xdu@define@fontsize{erhao}{22bp}
\xdu@define@fontsize{xiaoer}{18bp}
\xdu@define@fontsize{sanhao}{16bp}
\xdu@define@fontsize{xiaosan}{15bp}
\xdu@define@fontsize{sihao}{14bp}
\xdu@define@fontsize{banxiaosi}{13bp}
\xdu@define@fontsize{xiaosi}{12bp}
\xdu@define@fontsize{dawu}{11bp}
\xdu@define@fontsize{wuhao}{10.5bp}
\xdu@define@fontsize{xiaowu}{9bp}
\xdu@define@fontsize{liuhao}{7.5bp}
\xdu@define@fontsize{xiaoliu}{6.5bp}
\xdu@define@fontsize{qihao}{5.5bp}
\xdu@define@fontsize{bahao}{5bp}
\renewcommand\normalsize{\@setfontsize\normalsize{12bp}{18bp}}
\renewcommand\baselinestretch{1.2}
\setlength{\textwidth}{\paperwidth}
\addtolength{\textwidth}{-6cm}
\setlength{\textheight}{\paperheight}
\ifxdu@bachelor
\addtolength{\textheight}{-4.5cm}
\setlength{\topmargin}{1.45cm-1in}
\setlength{\headheight}{20pt}
\setlength{\headsep}{0.6cm}
\setlength{\footskip}{18pt}
\else
\addtolength{\textheight}{-5.5cm}
\setlength\voffset{3cm-1in}
\setlength{\topmargin}{-5ex}
\setlength{\headheight}{3ex}
\setlength{\headsep}{1ex}
\setlength{\footskip}{5ex}
\addtolength{\textheight}{-3ex}
\fi
\setlength\marginparwidth{0cm}
\setlength\marginparsep{0cm}
\setlength{\oddsidemargin}{4cm-1in}
\setlength{\evensidemargin}{2cm-1in}
\def\xdu@clearpage{%
  \clearpage%
  \if@openright%
    \ifodd\c@page\relax\else%
      \null\thispagestyle{xdu@empty}\newpage%
    \fi%
  \fi}
\ifxdu@bachelor%
  \def\ps@xdu@header@rules{\vskip2pt\rule{\textwidth}{0.6pt}}
\else
  \def\ps@xdu@header@rules{
    \vskip4pt\rule{\textwidth}{0.6pt}%
    \vskip0.8pt\rule{\textwidth}{0.6pt}}
\fi
\def\ps@xdu@header@lefttext{%
  \hbox to\textwidth{%
    \hfil{\wuhao\noindent\leftmark}\hfil%
    {\ifxdu@bachelor\xiaowu\thepage\hskip1pt\fi}}}
\def\ps@xdu@header@righttext{%
  \hbox to\textwidth{%
    {\ifxdu@bachelor\xiaowu\thepage\hskip1pt\fi}%
    \hfil{\let\\=\relax\wuhao\rightmark}\hfil}}
\def\ps@xdu@footer@text{%
  \ifxdu@bachelor\relax\else%
  \hbox to\textwidth{\hfil{\xiaowu\thepage}\hfil}\fi}
\def\ps@xdu@empty{%
  \let\@oddhead\@empty%
  \let\@evenhead\@empty%
  \let\@oddfoot\@empty%
  \let\@evenfoot\@empty}
\def\ps@xdu@front{%
  \def\@oddhead{\vbox{\ps@xdu@header@lefttext\ps@xdu@header@rules}}%
  \def\@evenhead{\vbox{\ps@xdu@header@righttext\ps@xdu@header@rules}}%
  \def\@oddfoot{\ps@xdu@footer@text}%
  \def\@evenfoot{\ps@xdu@footer@text}%
}
\def\ps@xdu@headings{%
  \def\@oddhead{\vbox{\ps@xdu@header@lefttext\ps@xdu@header@rules}}%
  \def\@evenhead{\vbox{\ps@xdu@header@righttext\ps@xdu@header@rules}}%
  \def\@oddfoot{\ps@xdu@footer@text}%
  \def\@evenfoot{\ps@xdu@footer@text}%
}
\ifxdu@bachelor\ifxdu@english
\renewcommand{\chaptermark}[1]{%
  \ifodd\c@page%
    \markboth{#1}{\xdu@etitle}%
  \else%
    \markboth{\xdu@etitle}{#1}%
  \fi}
\else
\renewcommand{\chaptermark}[1]{%
  \ifodd\c@page%
    \markboth{#1}{\xdu@ctitle}%
  \else%
    \markboth{\xdu@ctitle}{#1}%
  \fi}
\fi\else
\renewcommand{\chaptermark}[1]{%
  \ifodd\c@page%
    \markboth{#1}{\xdu@xidian@str\xdu@thesis@str}%
  \else%
    \markboth{\xdu@xidian@str\xdu@thesis@str}{#1}%
  \fi}
\fi
\renewcommand{\sectionmark}[1]{}
\newlength\xdu@CJK@twochars
\newcommand{\xdu@unicode}[2]{\char\numexpr#1*256+#2\relax}
\def\xdu@CJK@space{\xdu@unicode{48}{7}}
\def\CJKindent{%
  \settowidth\xdu@CJK@twochars{\xdu@CJK@space\xdu@CJK@space}%
  \parindent\xdu@CJK@twochars}
\setlength{\parskip}{0pt \@plus2pt \@minus0pt}
\def\xdu@item@space{%
  \let\itemize\compactitem
  \let\enditemize\endcompactitem
  \let\enumerate\compactenum
  \let\endenumerate\endcompactenum
  \let\description\compactdesc
  \let\enddescription\endcompactdesc}

\newlength{\xdu@chapter@before}
\newlength{\xdu@chapter@after}
\ifxdu@bachelor
  \setlength{\xdu@chapter@before}{15mm}
  \setlength{\xdu@chapter@after}{4ex}
\else
  \setlength{\xdu@chapter@before}{12ex}
  \setlength{\xdu@chapter@after}{6ex}
\fi
\renewcommand\chapter{%
  \xdu@clearpage%
  \if@mainmatter\thispagestyle{xdu@headings}%
  \else\thispagestyle{xdu@front}\fi%
  \phantomsection%
  \global\@topnum\z@%
  \secdef\@chapter\@schapter}
\def\@chapter[#1]#2{%
  \if@mainmatter\refstepcounter{chapter}\fi
  \ifxdu@english%
  \addcontentsline{toc}{chapter}{\xiaosi\bfseries\@chapapp~#1}%
  \chaptermark{\@chapapp~#1}%
  \else%
  \addcontentsline{toc}{chapter}{\xiaosi\song\bfseries\@chapapp\hskip1ex#1}%
  \chaptermark{\@chapapp\hskip2ex#1}%
  \fi%
  \@makechapterhead{#2}}
\def\@makechapterhead#1{\noindent%
  \parbox[b]{\textwidth}{\vskip\xdu@chapter@before}%
  {\centering \sanhao\song\bfseries%
    \ifnum \c@secnumdepth > \m@ne%
      \@chapapp\hskip1ex%
    \fi%
   \interlinepenalty\@M%
   #1\par\nobreak%
   \vskip\xdu@chapter@after%
   \nointerlineskip}}
\def\@schapter#1{%
  \addcontentsline{toc}{chapter}{\xiaosi\song\bfseries#1}%
  \chaptermark{#1}%
  \@makeschapterhead{#1}
  \@afterheading}
\def\@makeschapterhead#1{\noindent%
  \parbox[b]{\textwidth}{\vskip\xdu@chapter@before}%
  {\sanhao\song\bfseries\centering%
   \interlinepenalty\@M
   #1\par\nobreak%
   \vskip\xdu@chapter@after%
   \nointerlineskip}}
\ifxdu@bachelor
\renewcommand\section{\par%
  \ifdim\prevdepth=-1000pt\dimen0=1ex%
  \else\dimen0=3ex\fi%
  \@startsection {section}{1}{\z@}%
  {\dimen0}%
  {2ex}%
  {\sihao[1.429]\filcenter}}
\else
\titleformat{\section}[block]{\xiaosan}{\thesection}{1ex}{}
\titlespacing{\section}{0pt}{2ex}{\parskip}
\fi
\titleformat{\subsection}[block]{\sihao}{\thesubsection}{1ex}{}
\titlespacing{\subsection}{\xdu@CJK@twochars}{\parskip}{\parskip}
\renewcommand{\tableofcontents}{%
  % \xdu@clearpage%
  % \phantomsection%
  % \@makeschapterhead{\contentsname}%
  % \chaptermark{\contentsname}%
  \chapter*{\contentsname}%
  \@starttoc{toc}}
\newlength\xdu@dot@space
\setlength\xdu@dot@space{3bp}
\titlecontents{chapter}[0pt]{}%
              {\contentslabel{0pt}}%
              {\hspace*{0pt}}%
              {\titlerule*[\xdu@dot@space]{.}\bfseries\contentspage}
\dottedcontents{section}[4em]{}{2.1em}{\xdu@dot@space}
\dottedcontents{subsection}[6.8em]{}{2.7em}{\xdu@dot@space}
\def\xdu@define@term#1{
  \expandafter\gdef\csname #1\endcsname##1{%
    \expandafter\gdef\csname xdu@#1\endcsname{##1}}
  \csname #1\endcsname{}}
\xdu@define@term{universitycode}
\xdu@define@term{catelognumber}
\xdu@define@term{classid}
\xdu@define@term{studentid}
\xdu@define@term{secretlevel}
\xdu@define@term{ctitle}
\xdu@define@term{etitle}
\xdu@define@term{cschool}
\xdu@define@term{cmajor}
\xdu@define@term{cfirstdiscipline}
\xdu@define@term{efirstdiscipline}
\xdu@define@term{cseconddiscipline}
\xdu@define@term{eseconddiscipline}
\xdu@define@term{cauthor}
\xdu@define@term{eauthor}
\xdu@define@term{cdegree}
\xdu@define@term{edegree}
\xdu@define@term{csupervisor}
\xdu@define@term{esupervisor}
\xdu@define@term{ccosupervisor}
\xdu@define@term{ecosupervisor}
\xdu@define@term{cdate}
\xdu@define@term{edate}
\xdu@define@term{cthesistype}
\xdu@define@term{ethesistype}
\def\xdu@urule#1#2{\hskip2pt\underline{\hb@xt@#1{\hss#2\hss}}\hskip3pt}
\def\xdu@put@prefix#1#2{\makebox[#1][s]{#2}}
\def\xdu@titlepage{%
  \ifxdu@bachelor%
    \xdu@titlepage@bachelor%
  \else%
    \xdu@titlepage@graduate%
  \fi}
\newcommand{\xdu@titlepage@bachelor}{
  \parbox[b]{0.9\linewidth}{%
    \xiaosi[1.5]\song\bf\ignorespaces\flushright%
    \xdu@put@prefix{3em}{\xdu@classid@prefix}\enskip%
    \xdu@urule{32mm}{\xdu@classid}\par%
    \xdu@put@prefix{3em}{\xdu@studentid@prefix}\enskip%
    \xdu@urule{32mm}{\xdu@studentid}}
  \begin{center}
    \ifxdu@print\vspace{132mm}\else\vspace{18mm}
    \includegraphics[width=77mm]{xdubadge}\par
    \vspace{15mm}
    \parbox[t]{\linewidth}{\chuhao\hei\centering\xdu@thesis@str}\par
    \vspace{15mm}
    \includegraphics[width=44mm]{xdlogo}\par
    \vspace{18mm}\fi
    \begin{minipage}{122mm}
      \flushleft\xiaosan[2.5]\song%
      \xdu@put@prefix{25mm}{\bf\xdu@ctitle@prefix}
      \xdu@urule{95mm}{}\par
      \xdu@put@prefix{25mm}{}\xdu@urule{95mm}{}\par
      \xdu@put@prefix{25mm}{\bf\xdu@cschool@prefix}
      \xdu@urule{95mm}{\xdu@cschool}\par
      \xdu@put@prefix{25mm}{\bf\xdu@cmajor@prefix}
      \xdu@urule{95mm}{\xdu@cmajor}\par
      \xdu@put@prefix{25mm}{\bf\xdu@cauthor@prefix}
      \xdu@urule{95mm}{\xdu@cauthor}\par
      \xdu@put@prefix{25mm}{\bf\xdu@csupervisor@prefix}
      \xdu@urule{95mm}{\xdu@csupervisor}
    \end{minipage}
    \vskip-87mm\hskip25mm
    \begin{minipage}{85mm}
      \xiaosan[2.5]\song\centering\ignorespaces\xdu@ctitle
    \end{minipage}
  \end{center}
}
\newcommand{\xdu@titlepage@graduate}{
  \ifxdu@print%
    \parbox{\textwidth}{\vskip143mm}
  \else%
    \parbox{\textwidth}{\vskip35mm}
    \begin{center}
      \includegraphics[width=77mm]{xdubadge-gr}\par
      \vskip15mm
      \parbox[t]{\linewidth}{\chuhao\hei\centering\xdu@thesis@str}\par
      \vskip15mm
      \includegraphics[width=44mm]{xdlogo}\par
    \end{center}
  \fi
  \vskip44mm\noindent
  \xdu@put@prefix{5em}{\heiti\sihao\bfseries\xdu@cauthor@prefix}
  \xdu@urule{12em}{\song\sihao\bfseries\xdu@cauthor}
  \ifxdu@masterpro
  \xdu@put@prefix{10.5em}{\heiti\sihao\bfseries\xdu@csupervisor@prefix}
  \xdu@urule{6.5em}{\song\sihao\bfseries\xdu@csupervisor}\par
  \else
  \xdu@put@prefix{8em}{\heiti\sihao\bfseries\xdu@csupervisor@prefix}
  \xdu@urule{9em}{\song\sihao\bfseries\xdu@csupervisor}\par
  \fi
  \vskip3ex\noindent
  \xdu@put@prefix{5em}{\heiti\sihao\bfseries\xdu@cfirstdiscipline@prefix}
  \xdu@urule{12em}{\song\sihao\bfseries\xdu@cfirstdiscipline}
  \ifxdu@masterpro
  \xdu@put@prefix{10.5em}{\heiti\sihao\bfseries\xdu@ccosupervisor@prefix}
  \xdu@urule{6.5em}{\song\sihao\bfseries\xdu@ccosupervisor}\par
  \else
  \xdu@put@prefix{5em}{\heiti\sihao\bfseries\xdu@cseconddiscipline@prefix}
  \xdu@urule{12em}{\song\sihao\bfseries\xdu@cseconddiscipline}\par
  \fi
  \vskip3ex\noindent
  \xdu@put@prefix{7em}{\heiti\sihao\bfseries\xdu@cdegree@prefix}
  \xdu@urule{10em}{\song\sihao\bfseries\xdu@cdegree}
  \xdu@put@prefix{9em}{\heiti\sihao\bfseries\xdu@cdate@titlepage@prefix}
  \xdu@urule{8em}{\song\sihao\bfseries\xdu@cdate}\par
  \vskip-79mm\noindent
  \begin{minipage}{\textwidth}
    \centering\song\erhao\bfseries\xdu@ctitle\par
  \end{minipage}
}
\newcommand{\xdu@cheadpage@bachelor}{}
\newcommand{\xdu@eheadpage@bachelor}{}
\newcommand{\xdu@cheadpage@graduate}{
  \noindent
  \parbox[b]{\textwidth}{
    \vskip4ex
    \song\wuhao\bfseries\ignorespaces\centering
    \xdu@put@prefix{4em}{\xdu@universitycode@prefix}%
    \xdu@urule{8em}{\xdu@universitycode}%
    \hfill{}%
    \xdu@put@prefix{4em}{\xdu@studentid@prefix}%
    \xdu@urule{8em}{\xdu@studentid}
    \par\vskip1ex
    \xdu@put@prefix{4em}{\xdu@catelognumber@prefix}%
    \xdu@urule{8em}{\xdu@catelognumber}%
    \hfill
    \xdu@put@prefix{4em}{\xdu@secretlevel@prefix}%
    \xdu@urule{8em}{\xdu@secretlevel}}
  \vskip17mm\noindent
  \begin{center}
    \begingroup\hei\bfseries\yihao\xdu@xidian@str\par\endgroup
    \vskip17mm
    \begingroup\song\erhao\bfseries\xdu@thesis@str\par\endgroup
  \end{center}
  \vskip65mm
  \begingroup\song\sihao[2]
  \newlength\xdu@headpage@hangpos
  \setlength\xdu@headpage@hangpos{0.5\textwidth-4em}
  \noindent\hangindent\xdu@headpage@hangpos\\
  \begingroup\bfseries\xdu@cauthor@prefix\endgroup{：}\xdu@cauthor\\
  \begingroup\bfseries\xdu@cfirstdiscipline@prefix\endgroup{：}
  \xdu@cfirstdiscipline\\
  \ifxdu@masterpro
  \begingroup\bfseries\xdu@cdegree@prefix\endgroup{：}\xdu@cdegree\\
  \begingroup\bfseries\xdu@csupervisor@prefix\endgroup{：}\xdu@csupervisor\\
  \begingroup\bfseries\xdu@ccosupervisor@prefix\endgroup{：}\xdu@ccosupervisor\\
  \else
  \begingroup\bfseries\xdu@cseconddiscipline@prefix\endgroup{：}
  \xdu@cseconddiscipline\\
  \begingroup\bfseries\xdu@cdegree@prefix\endgroup{：}\xdu@cdegree\\
  \begingroup\bfseries\xdu@csupervisor@prefix\endgroup{：}\xdu@csupervisor\\
  \fi
  \begingroup\bfseries\xdu@cdate@prefix\endgroup{：}\xdu@cdate\par
  \endgroup
  \vskip-110mm\noindent
  \begin{minipage}{\textwidth}
    \centering\song\erhao\bfseries\xdu@ctitle\par
  \end{minipage}
}
\newcommand{\xdu@eheadpage@graduate}{
  \noindent\parbox{\textwidth}{%
    \ifxdu@doctor\vskip155mm\else\vskip178mm\fi}
  \noindent
  \begin{minipage}{1.0\linewidth}
    \noindent\centering\sanhao[1.57]
    A \ifxdu@doctor dissertation \else thesis \fi submitted to\\
    XIDIAN UNIVERSITY\\
    in partial fulfillment of the requirements\\
    for the degree of \xdu@edegree%
    \ifxdu@doctor\relax\else\\in \xdu@efirstdiscipline\fi
  \end{minipage}
  \ifxdu@doctor\vskip27mm\else\vskip18mm\fi
  \begin{minipage}{1.0\linewidth}
    \noindent\centering\sanhao[1.57]
    By\\
    \xdu@eauthor\\
    \ifxdu@doctor(\xdu@efirstdiscipline)\\\fi
    Supervisor: \xdu@esupervisor%
    \ifxdu@masterpro\hskip1em\xdu@ecosupervisor\fi\\
    \xdu@edate
  \end{minipage}
  \vskip-225mm\noindent
  \begin{minipage}{\textwidth}
    \noindent\centering\erhao\bfseries\xdu@etitle\par
  \end{minipage}
}
\ifxdu@bachelor
  \let\xdu@cheadpage\xdu@cheadpage@bachelor
  \let\xdu@eheadpage\xdu@eheadpage@bachelor
\else
  \let\xdu@cheadpage\xdu@cheadpage@graduate
  \let\xdu@eheadpage\xdu@eheadpage@graduate
\fi
\long\@xp\def\@xp\collect@@body\@xp#\@xp1\@xp\end\@xp#\@xp2\@xp{%
  \collect@@body{#1}\end{#2}}
\long\@xp\def\@xp\push@begins\@xp#\@xp1\@xp\begin\@xp#\@xp2\@xp{%
  \push@begins{#1}\begin{#2}}
\long\@xp\def\@xp\addto@envbody\@xp#\@xp1\@xp{%
  \addto@envbody{#1}}
\newcommand{\xdu@@cauthorbio}[1]{\long\gdef\xdu@cauthorbio{#1}}
\newenvironment{cauthorbio}[1]{\long\gdef\xdu@bio@photo{#1}%
  \collect@body\xdu@@cauthorbio}{}
\newcommand{\xdu@@eauthorbio}[1]{\long\gdef\xdu@eauthorbio{#1}}
\newenvironment{eauthorbio}{\collect@body\xdu@@eauthorbio}{}
\def\xdu@bio@photowidth{1.00in}   % width of the biography photo area
\def\xdu@bio@photodepth{1.25in}   % depth (height) of the biography photo area
\def\xdu@bio@hangwidth{1.15in}    % width cleared for the biography photo area
\def\xdu@bio@hangdepth{1.25in}    % depth cleared for the biography photo area
\newdimen\@xdtmpdimenA
\newdimen\@xdtmpdimenB
\newcount\@xdtmpcountA
\def\xdu@make@authorbio{%
  \begin{center}
    \ifxdu@english%
      \sanhao[2]\bfseries{\xdu@authorbio@title}
    \else
      \sanhao[2]\hei{\xdu@authorbio@title}
    \fi
  \end{center}
  \vskip2ex%
  \def\xdu@temp@photobox{\mbox{%
      \begin{minipage}[b][\xdu@bio@photodepth][c]{\xdu@bio@photowidth}%
        \centering \xdu@bio@photo%
      \end{minipage}}}
  \settoheight{\@xdtmpdimenA}{\xdu@temp@photobox}
  \@xdtmpdimenB=\xdu@bio@hangdepth%
  % countA has the hang depth
  \@xdtmpcountA=\@xdtmpdimenB
  % calculates lines needed to produce the hang depth
  \divide\@xdtmpcountA by \baselineskip
  \advance\@xdtmpcountA by 1% ensure we overestimate
  % reference the top of the photo area to the top of a capital T
  \settoheight{\@xdtmpdimenB}{\mbox{T}}%
  \noindent\makebox[0pt][l]{\hspace{-\xdu@bio@hangwidth}%
    \raisebox{\@xdtmpdimenB}[0pt][0pt]{%
      \raisebox{-\xdu@bio@photodepth}[0pt][0pt]{\xdu@temp@photobox}}}%
  \hangindent\xdu@bio@hangwidth%
  \hangafter-\@xdtmpcountA%
  \ifxdu@english%
    \xdu@eauthorbio\par%
  \else
    \indent\xdu@cauthorbio\par%
  \fi
  \ifnum \prevgraf <\@xdtmpcountA\relax% detect when the biography text is shorter than the photo
  \advance\@xdtmpcountA by -\prevgraf% calculate how many lines we need to pad
  \advance\@xdtmpcountA by -1\relax% we compensate for the fact that we indented an extra line
  \@xdtmpdimenA=\baselineskip% calculate the length of the padding
  \multiply\@xdtmpdimenA by \@xdtmpcountA%
  \noindent\rule{0pt}{\@xdtmpdimenA}% insert an invisible support strut
  \fi%
  \ifxdu@english\relax\else\xdu@eauthorbio\par\fi%
}
\def\xdu@make@declaration{%
  \song\xiaosi[1.5]
  {\centering\bfseries\ifxdu@bachelor\sanhao\else\sihao[1.6]\fi%
    \xdu@xidian@str\par\xdu@declaration@title\par}
  \vskip4ex\xdu@declaration@str\vskip3ex
  \xdu@put@prefix{5em}{\xdu@author@presig}\underline{\hskip30mm}\hskip25mm
  \ifxdu@bachelor
    \xdu@put@prefix{2em}{\xdu@date@presig}\underline{\hskip30mm}\par
  \else
    \xdu@put@prefix{5em}{\xdu@date@presig}\underline{\hskip30mm}\par
  \fi
  \vskip16ex
  \ifxdu@bachelor\relax\else
  {\centering\bfseries\ifxdu@bachelor\sanhao\else\sihao[1.6]\fi%
    \xdu@xidian@str\par\xdu@authorization@title\par}
  \vskip4ex\xdu@authorization@str\par\vskip3ex
  \xdu@put@prefix{5em}{\xdu@author@presig}\underline{\hskip30mm}\hskip25mm
  \xdu@put@prefix{5em}{\xdu@supervisor@presig}\underline{\hskip30mm}\par
  \vskip3ex
  \xdu@put@prefix{5em}{\xdu@date@presig}\underline{\hskip30mm}\hskip25mm
  \xdu@put@prefix{5em}{\xdu@date@presig}\underline{\hskip30mm}\par
  \fi
}
\newcommand{\makecover}{
  \begin{titlepage}
    \xdu@titlepage
  \end{titlepage}
  \xdu@clearpage
  \thispagestyle{xdu@empty}
  \xdu@cheadpage
  \xdu@clearpage
  \thispagestyle{xdu@empty}
  \xdu@eheadpage
  \xdu@clearpage
  \addtolength{\topmargin}{15pt}
  \thispagestyle{xdu@empty}
  \xdu@make@declaration
  \xdu@clearpage
  \addtolength{\topmargin}{-15pt}
  \setcounter{page}{1}
  \xdu@makeabstract
}
\renewcommand\theequation{\ifnum \c@chapter>\z@ \thechapter%
                          -\fi\@arabic\c@equation}
\let\old@tabular\@tabular
\def\xdu@tabular{\wuhao\old@tabular}
\ifxdu@english
\DeclareCaptionLabelFormat{xdu@cap}{{\wuhao#1~\rmfamily#2}}
\else
\DeclareCaptionLabelFormat{xdu@cap}{{\wuhao#1\rmfamily#2}}
\fi
\DeclareCaptionLabelSeparator{xdu@sep}{\hspace{1em}}
\DeclareCaptionFont{xdu@capfont}{\wuhao}
\captionsetup{labelformat=xdu@cap,
              labelsep=xdu@sep,
              font=xdu@capfont,
              justification=centering}
\captionsetup[table]{position=top, belowskip={12bp-\intextsep}, aboveskip=3bp}
\captionsetup[figure]{position=bottom, belowskip={12bp-\intextsep}, aboveskip=3bp}
\captionsetup[subfloat]{font=xdu@capfont,captionskip=6bp,%
                        nearskip=6bp,farskip=0bp,topadjust=0bp}
\renewenvironment{table}{%
  \renewcommand* {\@floatboxreset}{%
    \reset@font\@setminipage}
  \dawu\@float{table}%
}{%
  \end@float\normalsize
}

\newcommand{\xdu@@cabstract}[1]{\long\gdef\xdu@cabstract{#1}}
\newenvironment{cabstract}{\collect@body\xdu@@cabstract}{}
\newcommand{\xdu@@eabstract}[1]{\long\gdef\xdu@eabstract{#1}}
\newenvironment{eabstract}{\collect@body\xdu@@eabstract}{}
\newcommand{\xdu@@ckeywords}[1]{\long\gdef\xdu@ckeywords{#1}}
\newenvironment{ckeywords}{\collect@body\xdu@@ckeywords}{}
\newcommand{\xdu@@ekeywords}[1]{\long\gdef\xdu@ekeywords{#1}}
\newenvironment{ekeywords}{\collect@body\xdu@@ekeywords}{}
\newcommand{\xdu@makeabstract}{%
  \xdu@mkabstracttrue%
  \expandafter \ifx \csname xdu@cabstract\endcsname%
  \relax\else%
    \chapter*{\cabstractname}%
    \normalsize\par\xdu@cabstract\vskip12bp%
    \ifxdu@bachelor%
      \setbox0=\hbox{\hei\xdu@ckeywords@title\hspace{1em}}%
      \noindent\hangindent\wd0\hangafter1
      \expandafter \ifx \csname xdu@ckeywords\endcsname%
        \relax\box0{\hei}%
      \else\box0{\hei\xdu@ckeywords}\fi%
    \else%% 硕士、博士论文格式相同
      \begingroup\song\wuhao
      \setbox0=\hbox{\bfseries\xdu@cthesistype@title}%
      \setbox1=\hbox to \wd0 {\bfseries\xdu@ckeywords@title}%
      \noindent\hangindent\wd0\hangafter1
      \expandafter \ifx \csname xdu@ckeywords\endcsname%
        \relax\box1{\bfseries}%
      \else\box1{\xdu@ckeywords}\fi%
      \par\noindent\box0{\bfseries}\xdu@cthesistype%
      \endgroup%
    \fi%
  \fi%
  \expandafter \ifx \csname xdu@eabstract\endcsname \relax%
  \else%
    \chapter*{\bfseries\eabstractname}%
    \normalsize\par\xdu@eabstract\vskip12bp%
    \begingroup\ifxdu@bachelor\normalsize\else\wuhao\fi
    \setbox0=\hbox{\bfseries\xdu@ekeywords@title\hskip1em}%
    \noindent\hangindent\wd0\hangafter1%
    \expandafter \ifx \csname xdu@ekeywords\endcsname%
      \relax\box0{\ifxdu@bachelor\bfseries\fi}%
    \else\box0{\ifxdu@bachelor\bfseries\fi\xdu@ekeywords}\fi%
    \ifxdu@bachelor\relax\else%
    \par\noindent {\bfseries\xdu@ethesistype@title}%
    \hskip1em\xdu@ethesistype
    \endgroup
    \fi%
  \fi
  \xdu@mkabstractfalse%
}
\def\@tocrmarg{2em}
\def\@dotsep{1} % 目录点间的距离
\def\@dottedtocline#1#2#3#4#5{%
  \ifnum #1>\c@tocdepth \else
    \vskip \z@ \@plus.2\p@
    {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
    \interlinepenalty\@M
    \leavevmode
    \@tempdima #3\relax
    \advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
    {#4}\nobreak\hskip2pt
    \leaders\hbox{$\m@th\mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
    \nobreak{\normalfont \normalcolor #5}%
    \par}%
  \fi}
\def\xdu@starttoc#1{% #1: float type, prepend type name in \listof*** entry.
  \let\oldnumberline\numberline
  \def\numberline##1{\oldnumberline{\csname #1name\endcsname%
      \ifxdu@english~\else\hskip.2em\fi ##1}}
  \@starttoc{\csname ext@#1\endcsname}
  \let\numberline\oldnumberline}
\def\xdu@listof#1{% #1: float type
  \@ifstar
    {\chapter*[]{\csname list#1name\endcsname}\xdu@starttoc{#1}}
    {\chapter*{\csname list#1name\endcsname}\xdu@starttoc{#1}}}
\renewcommand\listoffigures{\xdu@listof{figure}}
\ifxdu@english
\renewcommand*\l@figure{\@dottedtocline{1}{0em}{5em}}
\else
\renewcommand*\l@figure{\@dottedtocline{1}{0em}{3.2em}}
\fi
\renewcommand\listoftables{\xdu@listof{table}}
\let\l@table\l@figure

\bibpunct{[}{]}{,}{s}{}{,}
\renewcommand\NAT@citesuper[3]{\ifNAT@swa
\unskip\kern\p@\textsuperscript{\NAT@@open #1\NAT@@close}%
   \if*#3*\else\ (#3)\fi\else #1\fi\endgroup}
\DeclareRobustCommand\onlinecite{\@onlinecite}
\def\@onlinecite#1{\begingroup\let\@cite\NAT@citenum\citep{#1}\endgroup}
\renewenvironment{thebibliography}[1]{%
  \chapter*{\bibname}%
  \wuhao[1.5]%
  \list{\@biblabel{\@arabic\c@enumiv}}%
  {\renewcommand{\makelabel}[1]{##1\hfill}
    \settowidth\labelwidth{1.1cm}
    \setlength{\labelsep}{0.6em}
    \setlength{\itemindent}{0pt}
    \setlength{\leftmargin}{\labelwidth+\labelsep}
    \addtolength{\itemsep}{-0.7em}
    \usecounter{enumiv}%
    \let\p@enumiv\@empty
    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
  \sloppy
  \clubpenalty4000
  \@clubpenalty \clubpenalty
  \widowpenalty4000%
  \interlinepenalty4000%
  \sfcode`\.\@m}
{\def\@noitemerr
  {\@latex@warning{Empty `thebibliography' environment}}%
  \endlist}
\ifxdu@english
\newenvironment{acknowledgments}{\chapter*{\bfseries\xdu@ackname}}{}
\else
\newenvironment{acknowledgments}{\chapter*{\xdu@ackname}}{}
\fi
\let\xdu@appendix\appendix
\renewenvironment{appendix}{
  \xdu@appendix
  \gdef\@chapapp{\appendixname~\thechapter}
}{}
\AtEndOfClass{\input{xduthesis.cfg}}%
\AtBeginDocument{\CJKindent}
\AtEndOfClass{\sloppy\xdu@item@space}
\endinput
%%
%% End of file `xduthesis.cls'.
