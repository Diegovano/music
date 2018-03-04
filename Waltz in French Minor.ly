\version "2.18.2"
\header {
	title = "Waltz in French Minor"
	tagline = "For Nathalie Lescastereyres"
}

upper = \relative c''' {
	\clef treble
	\key aes \major
	\time 3/4
	\tempo 4 = 100
	aes4 ees c | aes c8 ees r4 |
	ees c aes | ees aes8 c aes4 |
	a8 bes b c des d | ees e f ges g aes |
	<aes c, ees aes,>2 <ees, aes c>4~ | <ees aes c>4 r2 |
	r2 r4 | r2 r4 | aes8 g f a c ees | ees, des c e g bes |
	bes4 ees8 des bes4 | c f8 ees c4 |
	des8 aes g f4. | aes8 f4 g8 des4 |
	aes'8 c,4 des8 <ees aes>4 | c'8 g aes f bes c, |
	ees8 f aes bes ees g | f4 c aes8 f |
	des'8 d bes des <bes ges'>4 | ees8 e c e <c aes'>4 |
	<des des,>2. | des8 aes f <des des'>4. |
	des''4 aes f | des f8 aes r4 |
	aes4 f des | aes des8 f des4 |
	d8 ees e f ges g | aes a bes b c des |
	<des, f aes des>2 <f, aes des f>4~ | <f aes des f>4 <ees aes c ees> <f bes des f> |
}

lower = \relative c {
	\clef bass
	\key aes \major
	\time 3/4
	r2 r4 |r2 r4 | r2 r4 | r2 r4 | r2 r4 | r2 r4 | r2 r4 | r4 r2 |
	aes4 <c ees> <c ees> | aes <c ees> <c ees> |
	aes <c ees> <c ees> | aes <c ees> <c ees> |
	bes <des f> <des f,> | bes <f des'>8 bes des4 |
	des4 <aes f'> <aes f'> | des <aes' f> <aes f> |
	aes <c, ees> <c ees> | ees, <c' ees> <c ees> |
	bes <ees g> <ees g,> | aes <c, f> <aes c> |
	bes <ges des'>8 bes ges4 | c <aes ees'>8 c <aes ees'>4 |
	<aes des> <aes f'> <des f> | aes8 des f des f aes | <aes, des f aes>4 r2 |
	r2 r4 | r2 r4 | r2 r4 | r2 r4 | r2 r4 | <f des'>2 <aes aes'>4~ | <aes aes'>4 <c c'> <des des'> | 
}
\score {
	<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout { }
	\midi { }
}