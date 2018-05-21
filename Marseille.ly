\version "2.18.2"
\header {
	title = "Marseille"
	subtitle = "When you wanna waste 30mins"
	tagline = ""
}

upper = \relative c' {
	\clef treble
	\key c \minor
	c8 ees g 16ees r8 g4 ees | c8 ees g 16ees r8 g4 ees |
	c16 c g'8 f d g r8 c4| c8 ees f16 d c d r8 c8 ees4 |
	b4 g2 c4 | c8 g g4 b8 d d4 | c4. e4 e16 d4 r16 | 
	c4 c,8 c16 e32 g <c, e g>8 r8 <c ees g>8 bes16 <c g> |
	<c g>8 <c g>4 a8 bes4 d8 g |
	c,8 ees g16 ees r8 g4 ees | c8 ees g16 ees r8 g4 ees |
}

lower = \relative c {
	\clef bass
	\key c \minor
	<c ees c'>2 <ees g c> | <ees g c> <c ees c'> |
	r16 <c g>8. r8 <d f,>8 c2 | <c ees g>4 <c d aes'>4 r8 ees8 c4 |
	<b d f>4 <b d g> b4 <c e g> | e4 d4. r8 b4 | g1 |
}

\score {
	\new PianoStaff \with {
	instrumentName = #"Piano"
	}
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout { }
	\midi { }
}