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
\ProvidesClass{usp}

\def\USPunidadeformato{}
\newcommand{\thepage}{\the\value{page}}
\RequirePackage{hyperref}
\newcommand{\USPpublicacaotipo}{}

\DeclareOption{tese}{\renewcommand{\USPpublicacaotipo}{tese}}
\DeclareOption{dissertacao}{\renewcommand{\USPpublicacaotipo}{dissertacao}}

\DeclareOption{graduacao}{\renewcommand{\USPpublicacaotipo}{graduacao}}
\DeclareOption{tcc}{\renewcommand{\USPpublicacaotipo}{graduacao}}
\DeclareOption{tg}{\renewcommand{\USPpublicacaotipo}{graduacao}}
\DeclareOption{tf}{\renewcommand{\USPpublicacaotipo}{graduacao}}

\DeclareOption{epusp}{\def\USPunidadeformato{ep}\input{uspmod1.mod}}
\DeclareOption{fdusp}{\def\USPunidadeformato{fd}\input{uspmod1.mod}}
%\DeclareOption{qualificacao} {\renewcommand{\USPpublicacaotipo}{qualificacao}}

\ExecuteOptions{tese}

\ProcessOptions\relax

\newcommand{\USPinstituicaodata}{Universidade de S\~ao Paulo}
\newcommand{\instituicao}[1]{\renewcommand{\USPinstituicaodata}{#1}}

\providecommand{\USPareadeconcentracaodata}{}

\newcommand{\USPorientadordata}{}

\newcommand{\USPcoorientadordata}{}

\newcommand{\USPtitulodata}{}

\newcommand{\USPanodata}{\the\year}
\newcommand{\USPanoFCdata}{\the\year}

\newcommand{\USPvolumedata}{}

\providecommand{\USPcidadedata}{}

\providecommand{\USPunidadedata}{}
