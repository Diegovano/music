\version "2.18.2"
\header {
	title = "Sonata"
	subtitle = "in B Minor"
	tagline = ""
	composer = "D Van Overberghe"
}

flute = \relative c''
{
	\clef treble
	\key b \minor
	\time 4/4 \numericTimeSignature	\
	\tempo 4 = 120
	b2~ b8 ais g'4^. | fis^. ais,( b2) | b8 cis b cis d cis d e | fis4 ais,( b2) | b16 cis d e fis4 \tuplet 3/2 {fis,8 ais cis} fis g | fis4 ais,2( b4->) |	b16 cis d e cis4 cis16 d e fis d4 |
	d16 e fis g e4 e16 fis g ais fis4 | \tuplet 3/2 {fis8 g fis} ais,2( b4) |
}

upper = \relative c'
{
	\clef treble
	\key b \minor
	\time 4/4 \numericTimeSignature
	% r2. << { e'8 d } \\ { <e, g b>4 } >> | << { fis4\stemDown fis8\stemDown e\stemDown } \\ { <a cis>2 } >> <fis b d>2 |
}

lower = \relative c
{
	\clef bass
	\key b \minor
	\time 4/4 \numericTimeSignature
}

\score
{

	<<
		\new Staff = "flute" \with {
		instrumentName = #"Flute"
		midiInstrument = "flute"
		}
		\flute
	
		\new PianoStaff \with {
		instrumentName = #"Piano"
		}
		<<
			\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
			\new Staff = "upper" \upper
			\new Staff = "lower" \lower
		>>
	>>
	\layout {
	}
}

\score {
	\unfoldRepeats
	<<
		\new Staff = "flute" \with {
		instrumentName = #"Flute"
		midiInstrument = "flute"
		}
		\flute
	
		\new PianoStaff \with {
		instrumentName = #"Piano"
		}
		<<
			\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
			\new Staff = "upper" \upper
			\new Staff = "lower" \lower
		>>
	>>
	\midi { }
}

\paper
{
	top-margin = 10
}