\version "2.18.2"
\header {
	title = "Dramatica"
	subtitle = " "
	tagline = ""
}

upper = \relative c''
{
	\clef treble
	\key cis \minor
	\time 6/8
	\tempo 4 = 80
	r8\mp cis gis' cis, gis' cis, | r cis gis' cis, gis' cis, | r2. | cis,8\p( dis e gis e dis | cis4.) r4. | cis8( dis e gis e dis |
	cis4.) r4. | cis8( dis e a e dis | cis4.) r4. | cis8( dis e a e dis | cis4.) r4. | cis8( dis e fis e dis |
	cis4.) r4. | cis8( dis e fis e dis | cis4.) r4. | \override TextSpanner.bound-details.left.text = "rall." cis8\startTextSpan\< dis e fis gis4-"legatiss."\stopTextSpan\!( | fis4.\p\>) \acciaccatura {fis8 e dis} e4. | fis2.\pp \fermata |
	
	\tempo 4 = 50
	fis8\mp\> r ais dis r b | ais4.\p ais4. | b4. ais4. | fis8 g gis a4 e8 |
	\key a \major
}

lower = \relative c'
{
	\clef bass
	\key cis \minor
	\time 6/8
	gis2. | gis2. | fis4.( gis4.~) | gis2.~ | gis4. gis8 fis gis~ | gis2.~ |
	gis4. a8 gis a~ | a2.~ | a4. a8 gis a8~ | a2.~ | a4. ais8 a ais~ | ais2.~ |
	ais4. ais8 a ais~ | ais2.~ | ais4. ais8 a ais | ais2 ais4( | c4.) <b cis>4. | <ais cis>2. |
	
	\tempo 4 = 50
	<ais cis>8 <ais cis> <ais cis> <cis, ais'> <cis ais'> <b fis'> | <cis gis'> <cis gis'> <cis gis'> <c fis> <c fis> <c fis> | <cis gis'> <cis gis'> <cis gis'> <cis fis> <cis fis> <cis gis'> | <cis ais'> <dis ais'> <b b'> <cis a'>4. |
	\key a \major
}

\score
{
	\new PianoStaff \with {
	instrumentName = #"Piano"
	}
	<<
		\set Score.proportionalNotationDuration = #(ly:make-moment 1/10)
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout { }
	\midi { }
}

\paper
{
	top-margin = 10
}