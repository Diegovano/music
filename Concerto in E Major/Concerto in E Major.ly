\version "2.18.2"
\include "articulate.ly"

\header {
	dedication = \markup { \char ##x00C0 "" }
	title = \markup { \vspace #2 \fontsize #5 \bold "Concerto" }
	subtitle = "en Mi Majeur"
	subsubtitle = \markup { \vspace #1 "" }
	tagline = ""
	composer = "D Van Overberghe"
}

\paper {
	top-margin = 20
	bottom-margin = 10
	left-margin = 15
	right-margin = 15
	
	system-system-spacing.basic-distance = #20
	
	print-page-number = ##t
	print-first-page-number = ##t
	oddHeaderMarkup = \markup \null
	evenHeaderMarkup = \markup \null
	oddFooterMarkup = \markup {
		\fill-line {
			\line { \italic { Concerto en Mi Majeur } }
			\center-column {
				\on-the-fly \print-page-number-check-first
				\fromproperty #'page:page-number-string
			}
			\line { \italic \tiny { date } }
		}
		\vspace #1.5
	}
	evenFooterMarkup = \oddFooterMarkup
}

oboe = \relative c''
{
	%\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
	%\override Score.SpacingSpanner.strict-note-spacing = ##t
	\clef treble
	\key e \major
	\time 4/4
	\tempo 4 = 120
	e4.( dis8 e cis b) r8 | b2 ~ b4 r | a4.( gis8 a fis dis) r | e2 ~ e4 r | 
	e4.( fis8 gis fis a) r | a2 ~ a4 r | a4.( b8 cis a dis) r | e2 ~ e4 r | 

}

fviolin = \relative c''
{
	\clef treble
	\key e \major
	\time 4/4
	b4. r8 a r gis r | gis2 ~ gis4 r | a4. r8 e r fis r | e2 ~ e4 r | 
	b4. r8 dis r fis r | fis2 ~ fis4 r | e4. r8 fis r a r | b2 ~ b4 r | 

}

sviolin = \relative c''
{
	\clef treble
	\key e \major
	\time 4/4
	gis4. r8 fis r gis r | gis2 ~ gis4 r | e4. r8 b r a r | b2 ~ b4 r | 
	b4. r8 dis r cis r | cis2 ~ cis4 r | cis4. r8 b r dis r | e2 ~ e4 r |

}

viola = \relative c'
{
	\clef alto
	\key e \major
	\time 4/4
	e4. r8 r4 dis8 r | dis2 ~ dis4 r | cis4. r8 r4 fis,8 r | gis2 ~ gis4 r | 
	gis4. r8 r4 a8 r | a2 ~ a4 r | a4. r8 r4 b8 r | b2 ~ b4 r | 

}

cello = \relative c
{
	\clef bass
	\key e \major
	\time 4/4
	e4. r8 r4 dis8 r | dis2 ~ dis4 r | e4. r8 r4 fis,8 r | gis2 ~ gis4 r | 
	gis4. r8 r4 fis8 r | fis2 ~ fis4 r | a4. r8 r4 b8 r | e2 ~ e4 r | 
 
}

\score
{
	\new StaffGroup %\with { \override StaffSymbol.ledger-line-thickness = #'(0.5 . 0.05) }
	<<
		\new Staff = "oboe" \with {
			instrumentName = #"Hautbois"
		}
		\oboe
		
		\new Staff = "fviolin" \with {
			instrumentName = #"Violon I"
		}
		\fviolin
		
		\new Staff = "sviolin" \with {
			instrumentName = #"Violon II"
		}
		\sviolin
		
		\new Staff = "viola" \with {
			instrumentName = #"Viole"
		}
		\viola
		
		\new Staff = "cello" \with {
			instrumentName = \markup {
			\center-column {
				"Violoncelle"
				\line { "et Contrebasse" }
				}
			}
		}
		\cello
		
	>>
	\layout {
		\context {
		\Score
		\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
		}
	}
}

\score
{
	\unfoldRepeats \articulate
	\new StaffGroup
	<<
		\new Staff = "oboe" \with {
			instrumentName = #"Hautbois"
			midiInstrument = "oboe"
		}
		\oboe
		
		\new Staff = "fviolin" \with {
			instrumentName = #"Violon I"
			midiInstrument = "violin"
		}
		\fviolin
		
		\new Staff = "sviolin" \with {
			instrumentName = #"Violon II"
			midiInstrument = "violin"
		}
		\sviolin
		
		\new Staff = "viola" \with {
			instrumentName = #"Viole"
			midiInstrument = "viola"
		}
		\viola
		
		\new Staff = "cello" \with {
			instrumentName = #"Violoncelle"
			midiInstrument = "cello"
		}
		\cello
		
		\new Staff = "doublebass" \with
		{
			instrumentName = #"Contrebasse"
			midiInstrument = "Contrabass"
			\transposition c
		}
		\cello %becuase cello and db parts are the same (8vb)
	>>
	\midi { }
}


\paper
{
	top-margin = 10
	indent = 3\cm
}