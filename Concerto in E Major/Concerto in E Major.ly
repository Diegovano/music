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
	r8 | e'2( b) | gis( fis) | cis8 cis4. a'8 a4. | cis2( e,) | a8 b,16 cis b4 cis2 | dis8 dis4. b'8 b4. |
	r1 | gis2 e'4 e16 dis e dis | e8 dis cis4 dis8 cis b4 |
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
	\tempo 4 = 60
	\partial 8
	e'8 | e4. b8 b gis-. gis e-. | e2 r4 r8 fis8 | fis4. a8-. a cis-. cis fis | fis2
}

sviolin = \relative c'
{
	\clef treble
	\key e \major
	\time 4/4 \numericTimeSignature
	gis'8 | e16 fis gis a gis8 gis r2 | b16 a gis fis e8 e gis16 cis b dis cis8 cis | a16 b cis dis cis8 cis r2 | a16 b cis dis a8 a r2 | a16 gis e dis cis8 cis e16 fis a b cis8 dis | b16 cis dis e dis8 dis r2 | 
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
		instrumentName = #"Hautbois"
		midiInstrument = "oboe"
		}
		\oboe
	
		\new PianoStaff \with {
		instrumentName = #"Piano"
		}
		<<
			\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
			\new Staff = "upper" \upper
			\new Staff = "lower" \lower
		>>
		
		\new Staff = "violin1" \with {
		instrumentName = #"Premiers Violons"
		midiInstrument = "violin"
		}
		\fviolin
		
		\new Staff = "violin2" \with {
		instrumentName = #"Seconds Violons"
		midiInstrument = "violin"
		}
		\sviolin
		
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
	<<
		\new Staff = "oboe" \with {
		instrumentName = #"Oboe"
		midiInstrument = "oboe"
		}
		\oboe
	
		\new PianoStaff \with {
		instrumentName = #"Piano"
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
	indent = 3\cm
}