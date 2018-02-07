\version "2.18.2"
\header {
	tagline = "Waltz in French Minor"
}

upper = \relative c''' {
	\clef treble
	\key aes \major
	\time 3/4
	aes8 ees c aes c16 ees r8 |
	ees c aes ees aes16 c aes8\noBeam |
	a16 bes b c des d ees e f ges  g aes |
	<aes c, ees aes,>4 <ees, aes c>2 |
}

lower = \relative c {
	\clef bass
	\key aes \major
	\time 3/4
	
}
\score {
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout { }
	\midi { }
}