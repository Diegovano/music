\version "2.18.2"
\header
{
	title = "Sonata in C Minor"
	tagline = ""
}

\pianoUpper = \relative c''
{
	\clef treble
	\key c \minor
	\time 4/4
	<g ees'>4 <aes f'> <g b d> <c, ees>8 d | 
}

\pianoLower = \relative c
{
	\clef bass
	\key c \minor
	\time 4/4
}

\score
{
	\new PianoStaff
	<<
		\new Staff = "PianoUpper" \pianoUpper
		\new Staff = "PianoLower" \pianoLower
	>>
	\midi { }
}
\paper
{
	top-margin = 1.5\cm
}