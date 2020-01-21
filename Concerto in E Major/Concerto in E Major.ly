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
	e2( dis8 e cis b) | r b4.~ b2 | a( gis8 a fis dis) | r e4.~ e2 | 
}

fviolin = \relative c''
{
	\clef treble
	\key e \major
	\time 4/4
	b2 r8 a r gis | r gis4.~ gis2 | a2 r8 e r fis | r e4.~ e2 | 
}

sviolin = \relative c''
{
	\clef treble
	\key e \major
	\time 4/4
	gis2 r8 fis r gis | r gis4.~ gis2 | e2 r8 b r a | r b4.~ b2 | 
}

viola = \relative c'
{
	\clef alto
	\key e \major
	\time 4/4
	e2 r4. dis8 | r dis4.~ dis2 | cis2 r4. fis,8 | r gis4.~ gis2 | 
}

cello = \relative c
{
	\clef bass
	\key e \major
	\time 4/4
	e2 r4. dis8 | r dis4.~ dis2 | e2 r4. fis,8 | r gis4.~ gis2 | 
}

\score
{
	\new StaffGroup
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