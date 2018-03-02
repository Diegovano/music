\version "2.18.2"
\header {
	title = "Waltz in French Minor"
	tagline = "For Nathalie Lescastereyres"
}

upper = \relative c''' {
	\tempo 8 = 95
	\clef treble
	\key aes \major
	\time 3/4
	aes8 ees c aes c16 ees r8 |
	ees c aes ees aes16 c aes8\noBeam |
	a16 bes b c des d ees e f ges  g aes |
	<aes c, ees aes,>4 <ees, aes c>2 |
	r2 r4 | aes16 g f a c ees ees, des c e g bes |
	bes8 ees16 des bes8 c f16 ees c8 |
	des16 aes g f8. aes16 f8 g16 des8 |
	aes'16 c,8 des16 <ees aes>8 c'16 g aes f bes c, |
	\key des \major
	ees16 f aes bes ees g f8 c aes16 f |
	des'16 d bes des <bes ges'>8 ees16 e c e <c aes'>8 |
	<des des,>4. des16 aes f <des des'>8. |
	des''8 aes f des f16 aes r8 |
	aes8 f des aes des16 f des8 |
	d16 ees e f ges g aes a bes b c des |
	<des, f aes des>4 <f, aes des f> <ees aes c ees>8 <f bes des f> |
}

lower = \relative c {
	\tempo 8 = 95
	\clef bass
	\key aes \major
	\time 3/4
	r2 r4 | r2 r4 | r2 r4 | r4 r2 |
	aes8\noBeam <c ees> <c ees> aes\noBeam <c ees> <c ees> |
	aes\noBeam <c ees> <c ees> aes\noBeam <c ees> <c ees> |
	bes\noBeam <des f> <des f,> bes\noBeam <f des'>16 bes des8 |
	des8\noBeam <aes f'> <aes f'> des\noBeam <aes' f> <aes f> |
	aes\noBeam <c, ees> <c ees> ees,\noBeam <c' ees> <c ees> |
	\key des \major
	bes\noBeam <ees g> <ees g,> aes\noBeam <c, f> <aes c> |
	bes\noBeam <ges des'>16 bes ges8 c\noBeam <aes ees'>16 c <aes ees'>8 |
	<aes des> <aes f'> <des f> aes16 des f des f aes | <aes, des f aes>4 r2 |
	r2 r4 | r2 r4 | <f des'>4 <aes aes'> <c c'>8 <des des'>8 | 
}
\score {
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout { }
	\midi { }
}