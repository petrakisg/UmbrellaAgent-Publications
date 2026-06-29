\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dituoi-thesis}[2026/02/03 v3.0 Official DIT Thesis Template]

% Ελληνικά ή Αγγλικά
\newif\ifgreek
\DeclareOption{en}{\greekfalse}
\DeclareOption{gr}{\greektrue}

% Διδακτορικό ή Μεταπτυχιακό
\newif\ifPhD
\DeclareOption{msc}{\PhDfalse}
\DeclareOption{phd}{\PhDtrue}

% Εξειδίκευση (μόνο για Μεταπτυχιακό)
\newcommand{\ekseidikseusiGr}{\colorbox{gray}{ΣΤΑ ΥΠΟΛΟΓΙΣΤΙΚΑ ΣΥΣΤΗΜΑΤΑ}}
\newcommand{\ekseidikseusiEn}{\colorbox{gray}{IN COMPUTER SYSTEMS}}

\DeclareOption{systems}{
	\renewcommand{\ekseidikseusiGr}{ΣΤΑ ΥΠΟΛΟΓΙΣΤΙΚΑ ΣΥΣΤΗΜΑΤΑ}
	\renewcommand{\ekseidikseusiEn}{IN COMPUTER SYSTEMS}
}
\DeclareOption{theory}{
	\renewcommand{\ekseidikseusiGr}{ΣΤΗ ΘΕΩΡΙΑ ΕΠΙΣΤΗΜΗΣ ΥΠΟΛΟΓΙΣΤΩΝ}
	\renewcommand{\ekseidikseusiEn}{IN COMPUTER SCIENCE THEORY}
}
\DeclareOption{software}{
	\renewcommand{\ekseidikseusiGr}{ΣΤΟ ΛΟΓΙΣΜΙΚΟ}
	\renewcommand{\ekseidikseusiEn}{IN SOFTWARE}
}
\DeclareOption{scicomp}{
	\renewcommand{\ekseidikseusiGr}{ΣΤΟΥΣ ΕΠΙΣΤΗΜΟΝΙΚΟΥΣ ΥΠΟΛΟΓΙΣΜΟΥΣ}
	\renewcommand{\ekseidikseusiEn}{IN SCIENTIFIC COMPUTING}
}
\DeclareOption{techapps}{
	\renewcommand{\ekseidikseusiGr}{ΣΤΙΣ ΤΕΧΝΟΛΟΓΙΕΣ - ΕΦΑΡΜΟΓΕΣ}
	\renewcommand{\ekseidikseusiEn}{IN TECHNOLOGIES - APPLICATIONS}
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}

% Ορίζουμε ως προεπιλογή Ελληνικά και Διδακτορικό
\ExecuteOptions{gr,phd}

\ProcessOptions\relax

\LoadClass[a4paper,oneside,12pt]{book}

% Διαμόρφωση της κεφαλίδας και του υποσέλιδου
\RequirePackage{fancyhdr}
\pagestyle{plain}
\fancyhf{}

% Περιθώρια σελίδας
\RequirePackage[nohead, top=2.5cm, bottom=3cm, left=2.5cm, right=2.5cm, marginparwidth=2.4cm, marginparsep=0.5mm]{geometry}

% Πακέτα για Ελληνικά
\RequirePackage{fontspec}
\RequirePackage[noindentfirst,nonumeralsign]{xgreek}

% Αυτόματη αλλαγή ελληνικού αγγλικού hyphenation
% http://www.mechpedia.gr/wiki/Hyphenation_-_%CE%A5%CF%86%CE%B5%CE%BD%CF%8E%CF%83%CE%B5%CE%B9%CF%82#xgreek_3
\RequirePackage[Greek,Latin]{ucharclasses}
\setTransitionsForGreek{\setlanguage{monogreek}}{\setlanguage{english}}

% Γραμματοσειρές
\setmainfont[Mapping=tex-text]{GFS Didot}
\setsansfont{DejaVuSans}
\setmonofont[Path = Font/,
	UprightFont    = *-R,
	BoldFont       = *-B,
	ItalicFont     = *-RI,
	BoldItalicFont = *-BI,
	Scale          = 0.95
]{UbuntuMono}

% Eλάχιστη απόσταση μεταξύ δύο γραμμών
\renewcommand{\baselinestretch}{1.4}

% Πακέτο για χρωματισμό
\RequirePackage{xcolor}

% Πακέτα για σχήματα
\RequirePackage{caption}
\RequirePackage{subcaption}

% Πακέτα για ευρετήριο όρων
\RequirePackage[unbalanced]{idxlayout}
\RequirePackage[original]{imakeidx}
\makeindex[intoc]

% Πακέτα για Μαθηματικά
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{latexsym}
\RequirePackage{mathtools}

% Πακέτα για αλγορίθμους
\RequirePackage{algorithmic}
\RequirePackage[chapter]{algorithm}

% Πακέτο για τη δημιουργία hyperlinks
\RequirePackage{hyperref}

% Δημιουργία μίνι ευρετηρίου στην αρχή κάθε κεφάλαιου
\RequirePackage[nohints]{minitoc}
\setcounter{minitocdepth}{1}
\setlength{\mtcindent}{-10pt}
%\mtcsettitle{minitoc}{Description of contents}
\nomtcpagenumbers  % remove page numbers from minitocs
\newcommand{\addstarredchapterc}[1]{\cleardoublepage\phantomsection\addstarredchapter{#1}}
\renewcommand{\afterminitoc}{\hrule width\textwidth\@afterindentfalse\@afterheading} % fix identation of first paragraph
\nomtcrule
\let\origminitoc\minitoc
\renewcommand{\minitoc}{\hrule width\textwidth\origminitoc\vspace{2\baselineskip}}


\ifgreek
	\newcommand{\cseafierwsi}{Αφιέρωση}
	\newcommand{\cseeuxaristies}{Ευχαριστίες}
	\newcommand{\csedimosieuseis}{Δημοσιεύσεις Συγγραφέα}
	\newcommand{\cseviografiko}{Σύντομο Βιογραφικό}
	\newcommand{\cseparartima}{Παράρτημα}
	
	\newcommand{\advisoryname}{Συμβουλευτική Επιτροπή}
	\newcommand{\examiningname}{Εξεταστική Επιτροπή}

	% Σελίδα περίληψης
	\newcommand{\ditabstractdpt}{Τμήμα Πληροφορικής και Τηλεπικοινωνιών, Πανεπιστήμιο Ιωαννίνων}
	\newcommand{\ditabstractsup}{Επιβλέπων}
	\newcommand{\ditabstractcs}{στην Πληροφορική}
	\ifPhD
		\newcommand{\ditabstracttype}{Δ.Δ.}
		\newcommand{\ditextabstracttype}{Ph.D.}
	\else
		\newcommand{\ditabstracttype}{Μ.Δ.Ε.}
		\newcommand{\ditextabstracttype}{M.Sc.}
	\fi
	\newcommand{\ditextabstract}{Extended Abstract}
	\newcommand{\ditextabstractcs}{in Computer Science}
	\newcommand{\ditextabstractsup}{Advisor}
	\newcommand{\ditextabstractdpt}{Department of Informatics and Telecommunications, University of Ioannina, Greece}

	% xgreek
	%\renewcommand{\chaptername}{Κεφάλαιο}
	%\renewcommand{\abstractname}{Περίληψη}
	\renewcommand{\listfigurename}{Κατάλογος Σχημάτων}
	\renewcommand{\listtablename}{Κατάλογος Πινάκων}
	\renewcommand{\listalgorithmname}{Κατάλογος Αλγορίθμων}
	%\renewcommand{\glossaryname}{Επεξηγήσεις Συμβολισμών}
	%\renewcommand{\bibname}{Βιβλιογραφία}
	%\renewcommand{\figurename}{Σχήμα}
	%\renewcommand{\tablename}{Πίνακας}
	%\renewcommand{\indexname}{Ευρετήριο}
	%\renewcommand{\contentsname}{Περιεχόμενα}
	%\renewcommand{\appendixname}{Παράρτημα}
	%\renewcommand{\proofname}{Απόδειξη}
	\floatname{algorithm}{Αλγόριθμος}

	% amsthm
	\theoremstyle{plain}   % definition, remark
	\newtheorem{theorem}{Θεώρημα}[chapter]

	\theoremstyle{plain}   % definition, remark
	\newtheorem{lemma}{Λήμμα}[chapter]

	\theoremstyle{plain}   % definition, remark
	\newtheorem{corollary}{Πόρισμα}[chapter]

	\theoremstyle{plain}   % definition, remark
	\newtheorem{fact}{Γεγονός}[chapter]

	\theoremstyle{definition}  % definition, remark
	\newtheorem{remark}{Σημείωση}[chapter]

	\theoremstyle{definition}  % definition, remark
	\newtheorem{definition}{Ορισμός}[chapter]

	\theoremstyle{plain}  % definition, remark
	\newtheorem{observation}{Παρατήρηση}[chapter]
\else
	% Αρχικοποίηση της γλώσσας του hyphenation
	\setlanguage{english}

	% Use Latin numerals instead of Greek numerals
	\nogreekalph

	\newcommand{\cseafierwsi}{Dedication}
	\newcommand{\cseeuxaristies}{Acknowledgements}
	\newcommand{\csedimosieuseis}{Author's Publications}
	\newcommand{\cseviografiko}{Short Biography}
	\newcommand{\cseparartima}{Appendix}

	\newcommand{\advisoryname}{Advisory Committee}
	\newcommand{\examiningname}{Examining Committee}

	% Σελίδα περίληψης
	\newcommand{\ditabstractdpt}{Department of Informatics and Telecommunications, University of Ioannina, Greece}
	\newcommand{\ditabstractsup}{Advisor}
	\newcommand{\ditabstractcs}{in Computer Science}
	\ifPhD
		\newcommand{\ditabstracttype}{Ph.D.}
		\newcommand{\ditextabstracttype}{Δ.Δ.}
	\else
		\newcommand{\ditabstracttype}{M.Sc.}
		\newcommand{\ditextabstracttype}{Μ.Δ.Ε.}
	\fi
	\newcommand{\ditextabstract}{Εκτεταμένη Περίληψη}
	\newcommand{\ditextabstractcs}{στην Πληροφορική}
	\newcommand{\ditextabstractsup}{Επιβλέπων}
	\newcommand{\ditextabstractdpt}{Τμήμα Πληροφορικής και Τηλεπικοινωνιών, Πανεπιστήμιο Ιωαννίνων}

	% xgreek
	\renewcommand{\chaptername}{Chapter}
	\renewcommand{\abstractname}{Abstract}
	\renewcommand{\listfigurename}{List of Figures}
	\renewcommand{\listtablename}{List of Tables}
	\renewcommand{\listalgorithmname}{List of Algorithms}
	\renewcommand{\glossaryname}{Glossary}
	\renewcommand{\bibname}{Bibliography}
	\renewcommand{\figurename}{Figure}
	\renewcommand{\tablename}{Table}
	\renewcommand{\indexname}{Index}
	\renewcommand{\contentsname}{Table of Contents}
	\renewcommand{\appendixname}{Appendix}
	\renewcommand{\proofname}{Proof}
	\floatname{algorithm}{Algorithm}

	% amsthm
	\theoremstyle{plain}   % definition, remark
	\newtheorem{theorem}{Theorem}[chapter]

	\theoremstyle{plain}   % definition, remark
	\newtheorem{lemma}{Lemma}[chapter]

	\theoremstyle{plain}   % definition, remark
	\newtheorem{corollary}{Corollary}[chapter]


	\theoremstyle{plain}   % definition, remark
	\newtheorem{fact}{Fact}[chapter]

	\theoremstyle{definition}  % definition, remark
	\newtheorem{remark}{Note}[chapter]

	\theoremstyle{definition}  % definition, remark
	\newtheorem{definition}{Definition}[chapter]

	\theoremstyle{plain}  % definition, remark
	\newtheorem{observation}{Observation}[chapter]
\fi

\ifPhD
	\newcommand{\ditthesisTypeGr}{Διδακτορική Διατριβή}
	\newcommand{\ditdiplwmaGr}{Διδακτορικού Διπλώματος}
	\newcommand{\ditthesisTypeEn}{Dissertation}
	\newcommand{\ditdiplwmaEn}{Doctor of Philosophy}
\else
	\newcommand{\ditthesisTypeGr}{Μεταπτυχιακή Εργασία Εξειδίκευσης}
	\newcommand{\ditdiplwmaGr}{Μεταπτυχιακού Διπλώματος Ειδίκευσης}
	\newcommand{\ditthesisTypeEn}{Thesis}
	\newcommand{\ditdiplwmaEn}{Master of Science}
\fi

\newcommand{\titleGr}[1]{\def\@titleGr{#1}}
\newcommand{\titleEn}[1]{\def\@titleEn{#1}}
\newcommand{\authorGr}[1]{\def\@authorGr{#1}}
\newcommand{\authorEn}[1]{\def\@authorEn{#1}}
\newcommand{\arthro}[1]{\def\@arthro{#1}}
\newcommand{\aitiatiki}[1]{\def\@aitiatiki{#1}}
\newcommand{\dateGr}[1]{\def\@dateGr{#1}}
\newcommand{\dateEn}[1]{\def\@dateEn{#1}}
\newcommand{\advisorGr}[1]{\def\@advisorGr{#1}}
\newcommand{\advisorEn}[1]{\def\@advisorEn{#1}}

\ifgreek
	\title{\@titleGr}
	\author{\@authorGr}
	\date{\@dateGr}
	\newcommand{\advisor}{\@advisorGr}
	\newcommand{\ditthesisType}{\ditthesisTypeGr}
	\newcommand{\ekseidikseusi}{\ekseidikseusiGr}
	\newcommand{\titleBilingual}{\@titleEn}
	\newcommand{\authorBilingual}{\@authorEn}
	\newcommand{\dateBilingual}{\@dateEn}
	\newcommand{\advisorBilingual}{\@advisorEn}
	\newcommand{\ditthesisTypeBilingual}{\ditthesisTypeEn}
	\newcommand{\ekseidikseusiBilingual}{\ekseidikseusiEn}
\else
	\title{\@titleEn}
	\author{\@authorEn}
	\date{\@dateEn}
	\newcommand{\advisor}{\@advisorEn}
	\newcommand{\ditthesisType}{\ditthesisTypeEn}
	\newcommand{\ekseidikseusi}{\ekseidikseusiEn}
	\newcommand{\titleBilingual}{\@titleGr}
	\newcommand{\authorBilingual}{\@authorGr}
	\newcommand{\dateBilingual}{\@dateGr}
	\newcommand{\advisorBilingual}{\@advisorGr}
	\newcommand{\ditthesisTypeBilingual}{\ditthesisTypeGr}
	\newcommand{\ekseidikseusiBilingual}{\ekseidikseusiGr}
\fi


\makeatletter

% Δημιουργία της σελίδας τίτλου
\renewcommand{\maketitle}{
	% Ρύθμιση του πακέτου hyperref
	\hypersetup{
		pdftitle={\@title},
		pdfauthor={\@author},
		pdfsubject={\ditthesisType},
		pdfborder={0 0 0.5},
		linkbordercolor={0.9 0.9 0.9},
		citebordercolor={0.9 0.9 0.9},
		urlbordercolor={0.9 0.9 0.9}
	}
	\begin{center}
		\ifgreek
			\makegreektitle
		\else
			\makeenglishtitle
		\fi
	\end{center}
}


% Δημιουργία της σελίδας τίτλου στα Ελληνικά
\newcommand{\makegreektitle}{
    {\LARGE \@titleGr}

    {\Large
        \vfill \vfill   Η \ditthesisTypeGr

        \vfill          υποβάλλεται στην ορισθείσα

                        από την Συνέλευση 

                        του Τμήματος Πληροφορικής και Τηλεπικοινωνιών

                        Εξεταστική Επιτροπή

        \vfill          από \@arthro

        \vfill          {\LARGE \@aitiatiki}

        \vfill          ως μέρος των υποχρεώσεων για την απόκτηση του

        \vfill          \MakeUppercase{\ditdiplwmaGr}

        \ifPhD\else     ΣΤΗΝ ΠΛΗΡΟΦΟΡΙΚΗ

        \vspace{1em}    ΜΕ ΕΞΕΙΔΙΚΕΥΣΗ

                        \ekseidikseusiGr
        \fi

        \vfill \vfill   Πανεπιστήμιο Ιωαννίνων
       
                        \@dateGr\par
    }
    \clearpage
}


% Δημιουργία της σελίδας τίτλου στα Αγγλικά
\newcommand{\makeenglishtitle}{
    {\LARGE \@titleEn}

    {\Large
        \vfill \vfill   A \ditthesisTypeEn

        \vfill          submitted to the designated

                        by the General Assembly

                        of the Department of Informatics and Telecommunications

                        Examination Committee

        \vfill          by

        \vfill          {\LARGE \@authorEn}

        \vfill          in partial fulfillment of the requirements for the degree of

        \vfill          \MakeUppercase{\ditdiplwmaEn}\ifPhD\else\ IN COMPUTER SCIENCE

        \vspace{1em}    WITH SPECIALIZATION

                        \ekseidikseusiEn
        \fi

        \vfill \vfill   University of Ioannina
        
                        \@dateEn\par
    }
    \clearpage
}


% Δημιουργία της σελίδας με τις επιτροπές
\newcommand{\makecommittees}{%
  \ifPhD
    \noindent\advisoryname:
    \begin{itemize}
      \item \@advi
      \item \@advii
      \item \@adviii
    \end{itemize}
    \vskip\baselineskip
    \noindent\examiningname:
    \begin{itemize}
      \item \@exami
      \item \@examii
      \item \@examiii
      \item \@examiv
      \item \@examv
      \item \@examvi
      \item \@examvii
    \end{itemize}
  \else
    \noindent\examiningname:
    \begin{itemize}
      \item \@mexami
      \item \@mexamii
      \item \@mexamiii
    \end{itemize}
  \fi
  \clearpage
}

% Macros to produce the committee lists
\newcounter{@advctr}\setcounter{@advctr}{1}
\newcounter{@exmctr}\setcounter{@exmctr}{1}
\newcounter{@mexmctr}\setcounter{@mexmctr}{1}
\def\PHDadvisory#1#2#3{\expandafter\gdef\csname @adv\roman{@advctr}\endcsname%
    {\textbf{#1}, #2, #3}\addtocounter{@advctr}{1}}
\def\PHDexaminer#1#2#3{\expandafter\gdef\csname @exam\roman{@exmctr}\endcsname%
    {\textbf{#1}, #2, #3}\addtocounter{@exmctr}{1}}
\def\MSCexaminer#1#2#3{\expandafter\gdef\csname @mexam\roman{@mexmctr}\endcsname%
    {\textbf{#1}, #2, #3}\addtocounter{@mexmctr}{1}}

 
% Δημιουργία της κεφαλίδας για την περίληψη
\newcommand{\makeditabstract}{
	\@author, \ditabstracttype\ifPhD\else\ \ditabstractcs\fi, \ditabstractdpt, \@date.\\
	\@title.\\
	\ditabstractsup: \advisor.

	\bigskip
	\bigskip
}


% Δημιουργία της κεφαλίδας για την εκτεταμένη περίληψη
\newcommand{\makeditextabstract}{
	\authorBilingual, \ditextabstracttype\ifPhD\else\ \ditextabstractcs\fi, \ditextabstractdpt, \dateBilingual.\\
	\titleBilingual.\\
	\ditextabstractsup: \advisorBilingual.

	\bigskip
	\bigskip
}




% Redefining the \section command:

\renewcommand{\section}{\@startsection
{section}%                   % the name
{1}%                         % the level
{0mm}%                       % the indent
{-2\baselineskip}%            % the before skip
{0.5\baselineskip}%          % the after skip
{\normalfont\large\bf}} % the style

% Redefining the chapter heading styles

% Numbered chapter heading style:

\renewcommand{\@makechapterhead}[1]{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    %\hrule                                           % horizontal line
    \vspace{5pt}%                                    % add some vertical space
    \ifnum \c@secnumdepth >\m@ne
        \huge\scshape \leftline{\@chapapp\space \thechapter}    % Chapter followed by number
        \par\nobreak
        \vskip 20\p@
    \fi
    \interlinepenalty\@M
    \Huge \scshape \begin{flushright}#1\end{flushright}\par                            % chapter title
    \vspace{5pt}%                                    % add some vertical space
    %\hrule                                           % horizontal rule
    \nobreak
    \vskip 40\p@
  }
  \minitoc
}

% Unnumbered chapter heading style:

\renewcommand{\@makeschapterhead}[1]{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    %\hrule                                           % horizontal line
    \vspace{5pt}%                                    % add some vertical space
    \interlinepenalty\@M
    \Huge \scshape #1\par                            % chapter title
    \vspace{5pt}%                                    % add some vertical space
    \hrule                                           % horizontal line
    \nobreak
    \vskip 40\p@
  }}


\makeatother

% end of file:
\endinput
