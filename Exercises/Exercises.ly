\version "2.18.2"
\header {
	tagline = ""
}

upper = \relative c'
{
	\clef treble
	\key d \major
	\time 4/4
	d4 d8 fis4 b8 a4 | a a8 e4 g8 a4 | d, fis16 g e8 a16 g8 a16 g8 fis | d'4 cis8 g4 fis8 fis'4-> \bar "|."
}

lower = \relative c,
{
	\clef bass
	\key d \major
	\time 4/4
	fis4 a4. g8 fis4 | fis4. b4 cis8 d4 | d8. cis8. d8 cis a cis d | a4. cis4 d8 d,4->
}

\score 
{
	\new PianoStaff \with
	{
		instrumentName = #"Piano"
	}
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout { }
	\midi { }
}