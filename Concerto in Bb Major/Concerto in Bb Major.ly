\version "2.18.2"
\header {
	title = "Concerto for Violin and Cello"
	subtitle = "in B flat Major"
	tagline = ""
}

violin = \relative c''
{
	\clef treble
	\key bes \major
	\time 4/4 \numericTimeSignature
	\partial 4
	
	r4 | r1 | f1 | f16 d c f, f8 a bes4. f'8 |
	f16 d c f, f8 a bes4. f'8 | r2.
}

cello = \relative c
{
	\clef bass
	\key bes \major
	\time 4/4 \numericTimeSignature
	\partial 4
	
	r4 | d4 d bes' f | bes, d bes' f | f a bes bes, |
	f' a bes bes, |	r2.
}

upper = \relative c''
{
	\clef treble
	\key bes \major
	\time 4/4 \numericTimeSignature
	\tempo 4 = 60
	\partial 4
	
	f,4 | bes2 f'4 d4 | bes2 f'4 d | a4. c8 d2 |
	a4. c8 d2 | r2.
}

lower = \relative c
{
	\clef bass
	\key bes \major
	\time 4/4 \numericTimeSignature
	\partial 4
	
	r4 | bes4 <f' bes>8 <f bes>8 bes,4 <f' bes>8 <f bes>8 | bes,4 <f' bes>8 <f bes>8 bes,4 <f' bes>8 <f bes>8 | c4 <f a>8 <f a>8 bes,4 <f' bes>8 <f bes>8 |
	 c4 <f a>8 <f a>8 bes,4 <f' bes>8 <f bes>8 |r2.
	
}

\score
{
	<<
		\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
		\new Staff = "violin" \with {
		instrumentName = #"Violin"
		midiInstrument = "violin"
		}
		\violin
		
		\new Staff = "cello" \with {
		instrumentName = #"Cello"
		midiInstrument = "cello"
		}
		\cello
		\new PianoStaff \with {
		instrumentName = #"Piano"
		}
		<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
		>>
	>>
	\layout {
	}
	\midi { }
}

\paper
{
	top-margin = 10
}