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

oboe = \relative c'
{
	\clef treble
	\key e \major
	\time 4/4 \numericTimeSignature
}

upper = \relative c'
{
	\clef treble
	\key e \major
	\time 4/4 \numericTimeSignature
}

lower = \relative c'
{
	\clef bass
	\key e \major
	\time 4/4 \numericTimeSignature
}

fviolin = \relative c'
{
	\clef treble
	\key e \major
	\time 4/4 \numericTimeSignature
	\tempo 4 = 120
	\partial 8
	e'8 | e4. b8 b gis-. gis e-. | e2 r4 r8 fis8 | fis4. a8-. a cis-. cis fis | fis2
}

sviolin = \relative c'
{
	\clef treble
	\key e \major
	\time 4/4 \numericTimeSignature
}

cello = \relative c'
{
	\clef bass
	\key e \major
	\time 4/4 \numericTimeSignature

}

\score
{
	<<
		\new Staff = "oboe" \with {
		instrumentName = #"Oboe"
		midiInstrument = "oboe"
		}
		\oboe
	
		\new PianoStaff \with {
		instrumentName = #"Piano"
		midiInstrument = "piano"
		}
		<<
			%\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
			\new Staff = "upper" \upper
			\new Staff = "lower" \lower
		>>
		
		\new Staff = "violin1" \with {
		instrumentName = #"First Violin"
		midiInstrument = "violin"
		}
		\fviolin
		
		\new Staff = "violin2" \with {
		instrumentName = #"Second Violin"
		midiInstrument = "violin"
		}
		\sviolin
		
		\new Staff = "cello" \with {
		instrumentName = #"Cello"
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
	<<
		\new Staff = "oboe" \with {
		instrumentName = #"Oboe"
		midiInstrument = "oboe"
		}
		\oboe
	
		\new PianoStaff \with {
		instrumentName = #"Piano"
		midiInstrument = "piano"
		}
		<<
			%\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
			\new Staff = "upper" \upper
			\new Staff = "lower" \lower
		>>
		
		\new Staff = "violin1" \with {
		instrumentName = #"First Violin"
		midiInstrument = "violin"
		}
		\fviolin
		
		\new Staff = "violin2" \with {
		instrumentName = #"Second Violin"
		midiInstrument = "violin"
		}
		\sviolin
		
		\new Staff = "cello" \with {
		instrumentName = #"Cello"
		midiInstrument = "cello"
		}
		\cello
		
	>>
	\midi { }
}


\paper
{
	top-margin = 10
}