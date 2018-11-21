\version "2.18.2"
\header {
	title = ""
	subtitle = ""
	tagline = ""
}

upper = \relative c'
{
	\clef treble
	\key e \major
	\time 6/8
	\tempo 4 = 50
	
	e4. e4 fis8 | gis4. a4 b8 | dis4. cis16 b a  gis fis8 | e4.
	e4 fis8 | gis4. a4 b8 | dis4. e4. | r8\pp\< e8 e dis16 cis b a gis fis\fermata\ff\! |
	e4. e4 fis8 | gis4. a4 b8 | dis4. dis4 cis16 b | gis2. |
}

lower = \relative c
{
	\override TextSpanner.bound-details.left.text = "rall."
	\clef bass
	\key e \major
	\time 6/8
	
	gis8 e' gis a, e' a | b, e gis cis, fis cis' | b, fis' a r4. | gis,8 e' gis
	a, e' a | b, e gis cis, fis a | b, fis' a cis, e gis | <a, cis,>4. fis4\startTextSpan r16 <a b>16\stopTextSpan |
	gis4 e'16 gis a,8 e' a | b,4 e16 gis cis,8 fis fis' | b,,4 fis'16 a fis8 a b, | <gis' e b>2. |
}

\score
{
	\new PianoStaff \with {
	instrumentName = #"Piano"
	}
	<<
		\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout {
	}
	\midi { }
}

\paper
{
	top-margin = 10
}