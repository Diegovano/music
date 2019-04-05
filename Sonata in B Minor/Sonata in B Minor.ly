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
	\time 4/4 \numericTimeSignature	
	\tempo 4 = 120
	b2~ b8 ais g'4^. | fis^. ais,( b2) | b8 cis b cis d cis d e | fis4 ais,2( b4) | b16 cis d e fis4 \tuplet 3/2 {fis,8 ais cis} fis g | fis4 ais,2( b4) |	b16 cis d e cis4 cis16 d e fis d4 |
	d16 e fis g e4 e16 fis g ais fis4 | \tuplet 3/2 {fis8 g fis} ais,2( b4) |
	b16 cis d e fis e d cis ais g fis e fis g ais cis | b cis d e d cis b g a b cis d e fis g a | fis gis fis gis gis fisis gis fisis  a gis a fis a e a d, |
	e d e d e d e d b fis d e d e gis b | a b cis d e d cis b gis fis gis b | a8 a e16 fis'4. a,2
}

upper = \relative c''
{
	\clef treble
	\key b \minor
	\time 4/4 \numericTimeSignature
	r1 | r | r | r | r |
	r | r | r | r |
	<b fis'>2 <ais fis'> | r8 <g e'>4 cis16 d e4. <g, e'>8 | <a d>4 <gis e'> <a e'> <e a cis> |
	<< { <gis b>4 b <gis b> } \\ { e8 fis d cis d4 } >> <d a' b> <e a cis> <e a cis>8 <e a cis> <e gis b> <e gis b> <e gis b> <e gis b> | <e a cis>1 |
}

lower = \relative c,
{
	\clef bass
	\key b \minor
	\time 4/4 \numericTimeSignature
	r1 | r | r | r | r |
	r | r | r | r |
	<fis b d fis>8 <fis b d fis> <fis b d fis> <fis b d fis> <fis ais cis fis> <fis ais cis fis> <fis ais cis fis> <fis ais cis fis> | <g b d g> <g b d g> <g b d g> <g b d g> <a cis e g> <a cis e g> <a cis e g> <a cis e g> | <a d fis> <a d fis> <b d e gis> <b d e gis> <ais cis e ais> <ais cis e ais> <ais cis e ais> <ais cis e ais> |
	<gis b e gis> <gis b e gis> <gis b e gis> <gis b e gis> <a cis e a> <a cis e a> <b cis e gis>4 | <a cis e a>8 cis e a gis e b b, | a1
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