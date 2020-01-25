\version "2.18.2"
\header {
	title = "Counterpoint Exercise"
	subtitle = "25/01/2020"
	tagline = ""
}

upper = \relative c''
{
	\clef treble
	\key c \major
	\time 4/4
	\tempo 4 = 120
	
	d2 b | c d | e1 | d2 b~ | b a~ | a4 b c d | c2 cis | d1 |
}

lower = \relative c'
{
	\clef treble
	\key c \major
	\time 4/4
	
	d1 | f | e | a | g | f | e | d |
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
	\layout {
	}
	\midi { }
}

\paper
{
	top-margin = 10
}