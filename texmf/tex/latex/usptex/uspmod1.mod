%% usp.cls
%% Copyright 2012 C. C. Fattori
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
% 
% The Current Maintainer of this work is C. C. Fattori.
%
% This work consists of the files usp.cls, uspmod1.mod, uspmod1bibliografia.modb, uspmod1ferramentas.modf, uspmod1flutuantes.modl, uspmod1pretextual.modt, uspdbdepartamentos.data, uspdbprogramas.data, usp.bst, usp-num.bst, usptex.inc, usptex.layout, usptexM.layout
\NeedsTeXFormat{LaTeX2e}%
\ProvidesFile{uspmod1.mod}

\input{uspmod1ferramentas.modf}
\input{uspmod1bibliografia.modb}
\input{uspmod1flutuante.modl}
\input{uspmod1pretextual.modt}

\setextosiguais{\USPunidadeformato}{ep}{\renewcommand*\familydefault{\sfdefault}}

\newcommand{\USPtitulosumarioestruturadodata}{Sum\'ario estruturado}
\newcommand{\USPtitulobibliografia}{\uppercase{Refer\^encias}}
\newcommand{\USPtituloanexo}{\uppercase{Anexo}}
\newcommand{\USPtituloapendice}{\uppercase{Ap\^endice}}

%%%%%%%%%%%%%%%Definição das funções de apoio

\newcommand{\ultimaEpigrafe}{}

\newcounter{contPC}
\def\thecontPC{\stepcounter{contPC}\the\value{contPC}}

\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{4}

%%%%%%%%%%%%%%%Definição dos formatos

\def\espacamentoPadrao{1.35}

\def\baselinestretch{\espacamentoPadrao}

\newcommand{\fontetreze}{\@setfontsize\fontetreze{13}{16}}

\newcommand{\formatoTreze}{\fontsize{13}{16}\selectfont}
\newcommand{\formatoQuatorze}{\fontsize{14}{17}\selectfont}
\newcommand{\formatoDezesseis}{\fontsize{16}{17}\selectfont}
\newcommand{\formatoDez}{\fontsize{10}{12}\selectfont}
\newcommand{\formatoCaixaalta}[1]{\MakeUppercase{#1}}
\newcommand{\formatoVersal}[1]{{\scshape #1}}
\newcommand{\formatoSimples}{\def\baselinestretch{1}}
\newcommand{\formatoUmEMeio}{\def\baselinestretch{1.35}}
\newcommand{\formatoDuplo}{\def\baselinestretch{1.7}}
\newcommand{\formatoCentralizado}[1]{\begin{center}#1\end{center}}
\newcommand{\formatoDireita}[1]{\begin{flushright}#1\end{flushright}}
\newcommand{\formatoNegrito}[1]{{\bfseries #1}}
\newcommand{\formatoItalico}[1]{{\itshape #1}}

%%%%%%%%%%%%%%%Definição dos estilos das informações

\newcommand{\estiloAutor}[1]{\formatoCentralizado{#1}}
\newcommand{\estiloTitulo}[1]{\formatoCentralizado{\formatoNegrito{\formatoDezesseis{#1}}}}
\newcommand{\estiloLocaldata}[1]{\formatoCentralizado{#1}}
\newcommand{\estiloLocaldataSF}[1]{\formatoCentralizado{\formatoNegrito{#1}}}
\newcommand{\estilounidadecapa}[1]{\formatoCentralizado{\formatoNegrito{\formatoCaixaalta{#1}}}}
\newcommand{\estiloNaturezaarea}[1]{{\formatoSimples\normalsize #1}}
\newcommand{\estiloFichacatalograficaTitulo}[1]{\formatoCentralizado{\formatoNegrito{#1}}}
\newcommand{\estiloFichacatalograficaConteudo}[1]{{\begin{flushleft}\formatoSimples\normalsize #1\end{flushleft}}}
\newcommand{\estiloDedicatoriaTitulo}[1]{\formatoCentralizado{\formatoCaixaalta{\formatoQuatorze{#1}}}}
\newcommand{\estiloDedicatoriaTexto}[1]{\formatoDireita{#1}}
\newcommand{\estiloAgradecimentosTitulo}[1]{\formatoCentralizado{\formatoCaixaalta{\formatoNegrito{\formatoQuatorze{#1}}}}}
\newcommand{\estiloAgradecimentosTexto}[1]{#1}
\newcommand{\estiloEpigrafeTexto}[1]{\formatoDireita{#1}}
\newcommand{\estiloEpigrafeAutor}[1]{\formatoDireita{(#1)}}
\newcommand{\estiloResumoTitulo}[1]{\formatoCentralizado{\formatoCaixaalta{{\formatoNegrito{{\formatoQuatorze{ #1}}}}}}}
\newcommand{\estiloResumoTexto}[1]{#1}
\newcommand{\estiloResumoleTitulo}[1]{\formatoCentralizado{\formatoCaixaalta{{\formatoNegrito{{\formatoQuatorze{ #1}}}}}}}
\newcommand{\estiloResumoleTexto}[1]{#1}
\newcommand{\estiloListaTitulo}[1]{\formatoCentralizado{\formatoCaixaalta{\formatoQuatorze{#1}}}}
\newcommand{\estiloCapitulo}[1]{\formatoNegrito{\formatoQuatorze{#1}}}%
% \setextosiguais{\USPunidadeformato}{fd}{%
% \newcommand{\estiloCapitulo}[1]{\formatoNegrito{\formatoQuatorze{#1}}}%
% }{%
% \newcommand{\estiloCapitulo}[1]{\formatoNegrito{#1}}%
% }
\newcommand{\estiloSecao}[1]{\formatoTreze{#1}}
\newcommand{\estiloSubsecao}[1]{\formatoNegrito{#1}}
\newcommand{\estiloSubsubsecao}[1]{\formatoItalico{#1}}
\newcommand{\estiloParagrafo}[1]{#1}
\newcommand{\estiloCitacaoMaior}[1]{{\formatoSimples\formatoDez #1}}

\newcommand{\estiloSumarioTitulo}[1]{\formatoCentralizado{\formatoCaixaalta{{\formatoNegrito{{\formatoQuatorze{ #1}}}}}}}

%%%%%%%%%%%%%%%Epígrafe em página não pré-textual

\def\paginaTepigrafe{%
	\null\vfill%
	\formatoDireita{%
	  \begin{minipage}{.5\textwidth}%
		\estiloEpigrafeTexto{\USPepigrafetexto}\par%
		\estiloEpigrafeAutor{\USPepigrafeautor}%
	  \end{minipage}%
	}%
}

%%% Definição dos tamanhos de páginas

\setlength{\paperheight}{297mm}%
\setlength{\paperwidth}{210mm}%

\def\paginaPadrao{\clearpage\pdfpageheight=29.7cm\pdfpagewidth=21cm\textwidth 16cm\textheight 24.7cm\columnwidth\textwidth}

\newenvironment{pagina2A0retrato}{\clearpage\pdfpageheight=1680mm\pdfpagewidth=1188mm\textwidth 1138mm\textheight 1630mm}{\paginaPadrao}
\newenvironment{pagina2A0paisagem}{\clearpage\pdfpageheight=1188mm\pdfpagewidth=1680mm\textwidth 1630mm\textheight 1138mm}{\paginaPadrao}
\newenvironment{paginaA0retrato}{\clearpage\pdfpageheight=1188mm\pdfpagewidth=840mm\textwidth 790mm\textheight 1138mm}{\paginaPadrao}
\newenvironment{paginaA0paisagem}{\clearpage\pdfpageheight=840mm\pdfpagewidth=1188mm\textwidth 1138mm\textheight 790mm}{\paginaPadrao}
\newenvironment{paginaA1retrato}{\clearpage\pdfpageheight=840mm\pdfpagewidth=594mm\textwidth 544mm\textheight 790mm}{\paginaPadrao}
\newenvironment{paginaA1paisagem}{\clearpage\pdfpageheight=594mm\pdfpagewidth=840mm\textwidth 790mm\textheight 544mm}{\paginaPadrao}
\newenvironment{paginaA2retrato}{\clearpage\pdfpageheight=594mm\pdfpagewidth=420mm\textwidth 370mm\textheight 544mm}{\paginaPadrao}
\newenvironment{paginaA2paisagem}{\clearpage\pdfpageheight=420mm\pdfpagewidth=594mm\textwidth 544mm\textheight 370mm}{\paginaPadrao}
\newenvironment{paginaA3retrato}{\clearpage\pdfpageheight=420mm\pdfpagewidth=297mm\textwidth 247mm\textheight 370mm}{\paginaPadrao}
\newenvironment{paginaA3paisagem}{\clearpage\pdfpageheight=297mm\pdfpagewidth=420mm\textwidth 370mm\textheight 247mm}{\paginaPadrao}
\newenvironment{paginaA4paisagem}{\clearpage\pdfpageheight=210mm\pdfpagewidth=297mm\textwidth 247mm\columnwidth\textwidth\textheight 160mm}{\paginaPadrao}
\newenvironment{paginaA5retrato}{\clearpage\pdfpageheight=210mm\pdfpagewidth=148mm\textwidth 98mm\textheight 160mm}{\paginaPadrao}
\newenvironment{paginaA5paisagem}{\clearpage\pdfpageheight=148mm\pdfpagewidth=210mm\textwidth 160mm\textheight 98mm}{\paginaPadrao}
\newenvironment{paginaA6retrato}{\clearpage\pdfpageheight=148mm\pdfpagewidth=105mm\textwidth 55mm\textheight 98mm}{\paginaPadrao}
\newenvironment{paginaA6paisagem}{\clearpage\pdfpageheight=105mm\pdfpagewidth=148mm\textwidth 98mm\textheight 55mm}{\paginaPadrao}

%%% Definição dos estilos de páginas

\renewcommand{\ps@plain}{%
  \renewcommand{\@oddfoot}{}%
  \renewcommand{\@evenfoot}{}%
  \renewcommand{\@oddhead}{\hfill\thepage}%
  \renewcommand{\@evenhead}{\thepage\hfill}%
}

\newenvironment{paginaPTnumerada}{\pagestyle{cabecalho}}{\clearpage\pagestyle{plain}}
\newcommand{\ps@cabecalho}{%
	\renewcommand{\@oddfoot}{}%
	\renewcommand{\@evenfoot}{}%
	\renewcommand{\@oddhead}{}%
	\renewcommand{\@evenhead}{}%
}

\newcounter{pagina}
\newenvironment{paginaPTnaonumerada}{\pagestyle{cabecalho}\setcounter{pagina}{\thepage}}{\clearpage\setcounter{page}{\the\value{pagina}}\pagestyle{plain}}

\pagestyle{plain}

%%%%%% Divisões

\newcounter {chapter}

\newcommand{\@makechapterhead}[1]{%
  \ifepigrafe\paginaTepigrafe\epigrafefalse\clearpage\fi
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \estiloCapitulo{\thechapter\space}
    \fi
    \interlinepenalty\@M
    \estiloCapitulo{\MakeUppercase{#1}}\par\nobreak
    \vskip\baselineskip
  }
}
  
\newcommand{\@makeschapterhead}[1]{%
  \ifepigrafe\paginaTepigrafe\epigrafefalse\clearpage\fi
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \begin{center}\estiloCapitulo{#1}\end{center}\par\nobreak
    \vskip\baselineskip
  }}
\def\chaptermark#1{%
	\markright {\MakeUppercase{%
		\ifnum \c@secnumdepth >\m@ne
			Cap\'itulo \thechapter. \ %
		\fi
		#1}}}
\newcommand\chapter{\ifPrimeiraDivisao\immediate\write\@mainaux{\global\string\EPTsumariotrue}\PrimeiraDivisaofalse\fi\clearpage\global\@topnum\z@\@afterindentfalse\secdef\@chapter\@schapter}
\newcommand\bookchapter{\ifPrimeiraDivisao\immediate\write\@mainaux{\global\string\EPTsumariotrue}\PrimeiraDivisaofalse\fi\clearpage\global\@topnum\z@\@afterindentfalse\@bchapter}
\def\capitulo{\chapter}
\def\@schapter#1{\@makeschapterhead{#1}\@afterheading}
\def\@bchapter#1{\refstepcounter{chapter}\hyper@makecurrent{chapter}\addcontentsline{toc}{chapter}{#1}%
	\@makeschapterhead{#1}%
	\@afterheading
}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne\refstepcounter{chapter}%
		\addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}\uppercase{#1}}%
	\else
		\addcontentsline{toc}{chapter}{#1}%
	\fi
	\chaptermark{#1}%
	\addtocontents{ldf}{\protect\addvspace{10\p@}}%
	\addtocontents{ldt}{\protect\addvspace{10\p@}}%
	\addtocontents{ldl}{\protect\addvspace{10\p@}}%
	\@makechapterhead{#2}%
	\@afterheading
}
\newcommand*\l@chapter{\vskip 10\p@\@seccomlinhas{0}{0em}{1.4em}\estiloCapitulo}

\let\sectionmark\@gobble
\newcounter{section}[chapter]
\renewcommand\thesection {\thechapter.\@arabic\c@section}
\newcommand*\l@section{\@seccomlinhas{1}{1.5em}{2.3em}\estiloSecao}
\newcommand\section{\ifPrimeiraDivisao\immediate\write\@mainaux{\global\string\EPTsumariotrue}\PrimeiraDivisaofalse\fi\@USPstartsection{section}{1}{\z@}%
	{\baselineskip}%
	{\baselineskip}%
	{\formatoCaixaalta}}
\def\secao{\section}

\let\subsectionmark\@gobble
\newcounter{subsection}[section]
\renewcommand\thesubsection {\thesection.\@arabic\c@subsection}
\newcommand*\l@subsection{\@seccomlinhas{2}{3.8em}{3.2em}\estiloSubsecao}
\newcommand\subsection{\ifPrimeiraDivisao\immediate\write\@mainaux{\global\string\EPTsumariotrue}\PrimeiraDivisaofalse\fi\@startsection{subsection}{2}{\z@}%
	{\baselineskip}%
	{\baselineskip}%
	{\estiloSubsecao}}
\def\subsecao{\subsection}

\let\subsubsectionmark\@gobble
\newcounter{subsubsection}[subsection]
\renewcommand\thesubsubsection {\thesubsection.\@arabic\c@subsubsection}
\newcommand*\l@subsubsection{\@seccomlinhas{3}{7.0em}{4.1em}\estiloSubsubsecao}
\newcommand\subsubsection{\ifPrimeiraDivisao\immediate\write\@mainaux{\global\string\EPTsumariotrue}\PrimeiraDivisaofalse\fi\@startsection{subsubsection}{3}{\z@}%
	{\baselineskip}%
	{\baselineskip}%
	{\estiloSubsubsecao}}
\def\subsubsecao{\subsubsection}

\let\paragraphmark\@gobble
\newcounter{paragraph}[subsubsection]
\renewcommand\theparagraph {\thesubsubsection.\@arabic\c@paragraph}
\newcommand*\l@paragraph{\@seccomlinhas{4}{10em}{5em}\estiloParagrafo}
\newcommand\paragraph{\ifPrimeiraDivisao\immediate\write\@mainaux{\global\string\EPTsumariotrue}\PrimeiraDivisaofalse\fi\@startsection{paragraph}{4}{\z@}%
	{\baselineskip}%
	{\baselineskip}%
	{\estiloParagrafo}}
\def\paragrafo{\paragraph}

%%%%%% Siglas

\newcommand{\sigla}[3][]{%
	\ifPrimeiraSigla\immediate\write\@mainaux{\global\string\EPTlistadesiglastrue}\fi%
	\ifgravaSigla\write\tf@ldsg{\protect\USPcontentsline{sigla}{#2}{#3}{nm}}\fi%
	\sevazio{#1}{#3 (#2)}{#1}%
}

\newcommand{\siglaindireta}[2]{%
	\ifPrimeiraSigla\immediate\write\@mainaux{\global\string\EPTlistadesiglastrue}\fi%
	\ifgravaSigla\write\tf@ldsg{\protect\USPcontentsline{sigla}{#1}{#2}{nm}}\fi%
	#1 -- #2%
}

\newcommand{\siglaestrangeira}[3][]{%
	\ifPrimeiraSigla\immediate\write\@mainaux{\global\string\EPTlistadesiglastrue}\fi%
	\ifgravaSigla\write\tf@ldsg{\protect\USPcontentsline{sigla}{#2}{#3}{it}}\fi%
	\sevazio{#1}{\enfase{#3} (#2)}{#1}%
}

\newcommand{\siglaindiretaestrangeira}[2]{%
	\ifPrimeiraSigla\immediate\write\@mainaux{\global\string\EPTlistadesiglastrue}\fi%
	\ifgravaSigla\write\tf@ldsg{\protect\USPcontentsline{sigla}{#1}{#2}{it}}\fi%
	#1 -- \enfase{#2}%
}

\newcommand*\l@sigla[3]{%
	\USPadicionaSigla{#1}{#2}{#3}%
}

\newcommand{\novasigla}[2]{%
	\ifPrimeiraSigla\immediate\write\@mainaux{\global\string\EPTlistadesiglastrue}\PrimeiraSiglafalse\fi%
	\write\tf@ldsg{\protect\USPcontentsline{siglaext}{#1}{#2}{nm}}%
}

\newcommand{\novasiglaestrangeira}[2]{%
	\ifPrimeiraSigla\immediate\write\@mainaux{\global\string\EPTlistadesiglastrue}\PrimeiraSiglafalse\fi%
	\write\tf@ldsg{\protect\USPcontentsline{siglaext}{#1}{#2}{it}}%
}

\newenvironment{entradasSiglas}{\global\gravaSiglafalse}{}

\newcommand*\l@siglaext[3]{%
	\global\adicionaElemento{USPSiglasMenor}{#1}\global\adicionaElemento{USPSiglasMaior}{#2}\global\adicionaElemento{USPSiglasPropriedade}{#3}%
}

%%%%%% Símbolos

\newcommand{\simbolo}[2]{%
	\ifPrimeiroSimbolo\immediate\write\@mainaux{\global\string\EPTlistadesimbolostrue}\PrimeiroSimbolofalse\fi%
	\write\tf@ldsb{\protect\USPcontentsline{simbolo}{#1}{#2}}%
}

\newcommand*\l@simbolo[2]{%
	\noindent\begin{minipage}{.15\textwidth}#1\end{minipage}\begin{minipage}{.75\textwidth}#2\end{minipage}\par%
}

%%% Citações

\newcommand{\citacaomaior}[1]{\vskip 5pt\estiloCitacaoMaior{\leftskip=4cm\parindent 0pt #1\par}}

%%%%%%%% Outras definições temporarias

\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\abovedisplayskip 1.5ex plus4pt minus2pt%
\belowdisplayskip \abovedisplayskip%
\abovedisplayshortskip 0pt plus4pt%
\belowdisplayshortskip 1.5ex plus4pt minus2pt
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
\input{size12.clo}
\arraycolsep     5pt
\arrayrulewidth .4pt
\doublerulesep   2pt
\tabcolsep       6pt
\tabbingsep      0.5em
\setextosiguais{\USPunidadeformato}{ep}{%
\oddsidemargin .47cm
\evensidemargin .47cm
\textwidth 16cm
\textheight 24.7cm
\headheight 1.0in
\topmargin -0.9in
\headsep 0.1in
\footnotesep 0.5cm
\footskip 0.5cm
}{}
\setextosiguais{\USPunidadeformato}{fd}{%
\oddsidemargin .97cm
\evensidemargin .97cm
\textwidth 15.5cm
\textheight 24.7cm
\headheight 1.0in
\topmargin -0.9in
\headsep 0.1in
\footnotesep 0.5cm
\footskip 0.5cm
}{}
%\bibitemsep 20pt
\itemsep 2pt
\@lowpenalty   51
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
\parindent 12pt
\itemindent 20pt
\leftmargin 18pt
\leftmargini 24pt
\leftmarginii 30pt
\leftmarginiii 36pt
\leftmarginiv 38pt
\leftmarginv 40pt
\leftmarginvi 42pt
\labelsep 4pt
\newlength \USPalturacaixatitulocidadeano
\setlength \USPalturacaixatitulocidadeano{15cm}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
    \hb@xt@1.8em{\hss\@makefnmark}#1}
\raggedbottom

\def\enfase#1{\textit{#1}}
\def\destaque#1{\underline{#1}}
\def\altdestaque#1{\textbf{#1}}

\newcounter{anexos}
\def\anexo#1{\stepcounter{anexos}\bookchapter{\USPtituloanexo\space\@Alph\c@anexos\space--\space #1}\protected@edef\@currentlabel{\@Alph\c@anexos}}

\newcounter{apendices}
\def\apendice#1{\stepcounter{apendices}\bookchapter{\USPtituloapendice\space\@Alph\c@apendices\space--\space #1}\protected@edef\@currentlabel{\@Alph\c@apendices}}

%\renewcommand\theapendices{\@Alph\c@apendices}

\AtEndDocument{%
	\immediate\write\@mainaux{\global\string\defineultimaPagina{\thepage}}
}
