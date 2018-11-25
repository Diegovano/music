\version "2.18.2"
\header {
	title = ""
	subtitle = ""
	tagline = ""
}

upper = \relative c''
{
	\clef treble
	\key c \major
	\time 4/4
	\tempo 4 = 60
}

lower = \relative c
{
	\clef bass
	\key c \major
	\time 4/4
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