\version "2.18.2"
\header {
	dedication = \markup { \char ##x00C0 "Madame C. Jamet" }
	title = \markup { \vspace #2 \fontsize #5 \bold "Sonata" }
	subtitle = "in B Minor"
	subsubtitle = \markup { \vspace #1 "" }
	tagline = ""
	composer = "D Van Overberghe"
}

flute = \relative c''
{
	\clef treble
	\key b \minor
	\time 4/4 \numericTimeSignature
	\tempo 4 = 120
	b2~ b8 ais g'4 | fis ais,( b2) | b8( cis b cis d cis d e) | fis4 ais,( b2) | \tuplet 3/2 {fis8 ais cis} fis g fis4 e |
	d16 cis d e cis4 cis16 d e fis d4 | fis16 e fis g e4 e16 fis g ais fis4 | 
	fis ais,( b2) | e2 fis8 e b d | cis2 fis8 e b d | g2 a8 g d fis | e4 d a'2 |
}

upper = \relative c''
{
	\clef treble
	\key b \minor
	\time 4/4 \numericTimeSignature
	d16 e d cis d4~ d8 cis b ais16 g | fis4. e8 d16 e d cis d4 | d fis e g | fis4. fis8 d16 e d cis d4 | cis4 cis8 b cis4 fis4 | fis b8 fis g4 cis8 g | a4 d8 a b4 e8 b | cis4 cis, d'2 | b cis | cis,8 fis a cis fis2 | b,,8 d g b d2 | <g, cis e>4 <d a' d> <d g b d>2
}

lower = \relative c
{
	\clef bass
	\key b \minor
	\time 4/4 \numericTimeSignature
	<b d b'>2~ <b d b'>8 r r4 | r <ais fis' cis'> <d fis b>2 | <b d fis b>1 | fis4 <fis cis' fis>4 <b d fis>2 | << { fis'2 e4 fis } \\ { <ais, cis>1 } >> | <b d b'>2 <cis e g> | <a d a'> <g b e> | <fis cis' fis> <fis d' fis> | <g b g'>2 << { <cis fis>2 } \\ { a'8 cis b d } >> | <cis, fis cis'>2 << { <cis fis>2 } \\ {a'8 cis b cis } >> | <g, b d b'>2 r | <cis e g cis>4 <d fis> <b d g>2
	
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