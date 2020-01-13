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

upper = \relative c''
{
	\clef treble
	\key e \major
	\time 4/4
	\tempo 4 = 120
	e8 gis b4 a8 gis gis4 | fis2 cis8 fis a4 | gis8 fis fis4 e2 |
}

lower = \relative c'
{
	\clef bass
	\key e \major
	\time 4/4
	r4 e~ e2 | dis cis4 b~ | b2 e |
}

fviolin = \relative c''
{
	\clef treble
	\key e \major
	\time 4/4
	e
}

sviolin = \relative c''
{
	\clef treble
	\key e \major
	\time 4/4
	e
}

viola = \relative c
{
	\clef alto
	\key e \major
	\time 4/4
	e
}

cello = \relative c,
{
	\clef bass
	\key e \major
	\time 4/4
	e
}

doublebass = \relative c,,
{
	\clef bass
	\key e \major
	\time 4/4
	e
}

\score
{
	\new StaffGroup \with { \override StaffSymbol.ledger-line-thickness = #'(0.5 . 0.1) }
	<<
		\new PianoStaff \with {
			instrumentName = #"Piano"
		}
		<<
			\new Staff = "upper" \upper
			\new Staff = "lower" \lower
		>>
		
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
		
		\new Staff = "doublebass" \with {
			instrumentName = "Contrebasse"
			midiInstrument = "contrabass"
		}
		\doublebass
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
		\new PianoStaff \with {
			instrumentName = #"Piano"
		}
		<<
			\new Staff = "upper" \upper
			\new Staff = "lower" \lower
		>>
		
		\new GrandStaff
		<<
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
		>>
		
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
		
		\new Staff = "doublebass" \with {
			instrumentName = "Contrebasse"
			midiInstrument = "contrabass"
		}
		\doublebass
		
	>>
	\midi { }
}


\paper
{
	top-margin = 10
	indent = 3\cm
}