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

flute = \relative c''
{
	%\set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
	%\override Score.SpacingSpanner.strict-note-spacing = ##t
	\clef treble
	\key e \major
	\time 4/4 \numericTimeSignature
	gis4 a gis fis | gis2 a | dis e | r4 e r e | gis,8 b e4 r e |
	r fis, r a | fis8 a cis4 r fis | e,8 fis gis4 gis8 a b4 |
	a8 b cis4 dis8 e fis4 | e8 fis e4 fis8 gis a4 | r8 b4. b2 |
	e,8 dis cis b a2 | fis'8 e dis cis b2 | e8 dis cis b a2 | b8 cis e fis fis2 | r4 e 
	
}

oboe = \relative c'
{
	\clef treble
	\key e \major
	\time 4/4 \numericTimeSignature
	e4 cis e fis | e2 cis | b b |
}

fviolin = \relative c''
{
	\clef treble
	\key e \major
	\time 4/4 \numericTimeSignature
	\tempo 4 = 120
	e8 b~ b4 b8 e~ e4 | e,8 gis b r cis a fis r | dis fis b r e b gis4 | 
}

sviolin = \relative c''
{
	\clef treble
	\key e \major
	\time 4/4 \numericTimeSignature
	e,2 r | e r | fis2 r |
}

viola = \relative c
{
	\clef alto
	\key e \major
	\time 4/4 \numericTimeSignature
	gis'8( e' b) r e( gis, b) r | gis( e' cis r e a, cis) r | fis,( dis' b r e gis, b) r |
}

cello = \relative c,
{
	\clef bass
	\key e \major
	\time 4/4 \numericTimeSignature
	e8 b' e r gis e b r | e,8 b' gis e' a, cis a e' | fis, dis' b fis' gis e b4 |
}

\score
{
	\new StaffGroup
	<<
		\new Staff = "flute" \with {
			instrumentName = #"Flute"
			midiInstrument = "flute"
		}
		\flute
		
		\new Staff = "oboe" \with {
			instrumentName = #"Hautbois"
			midiInstrument = "oboe"
		}
		\oboe
		
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
		\new Staff = "flute" \with {
			instrumentName = #"Flute"
			midiInstrument = "flute"
		}
		\flute
		
		\new Staff = "oboe" \with {
			instrumentName = #"Hautbois"
			midiInstrument = "oboe"
		}
		\oboe
		
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
		
	>>
	\midi { }
}


\paper
{
	top-margin = 10
	indent = 3\cm
}