\version "2.18.2"
\header {
	title = "Waltz in French Minor"
	subtitle = "For Nathalie Lescastereyres"
	tagline = ""
}

upper = \relative c''' {
	\clef treble
	\key aes \major
	\time 3/4
	\tempo 4 = 120
	aes4 ees c | aes c8 ees r4 |
	ees c aes | ees aes8 c aes4 |
	a8 bes b c des d | ees e f ges g aes |
	<aes c, ees aes,>2 <ees, aes c>4~ | <ees aes c>4 r2 |
	r2 r4 | r2 r4 | aes8 g f a c ees | ees, des c e g bes |
	bes4 ees8 des bes4 | c f8 ees c4 |
	des8 aes g f4. | aes8 f4 g8 des4 |
	aes'8 c,4 des8 <ees aes>4 | c'8 g aes f bes c, |
	ees8 f aes c ees ges | f4 des aes8 f |
	des'8 d bes des <bes ges'>4 | ees8 e c ees <c aes'>4 |
	<des des,>2. | des8 aes f <des des'>4. |
	des''4 aes f | des f8 aes r4 |
	aes4 f des | aes des8 f des4 |
	d8 ees e f ges g | aes a bes b c des |
	<des, f aes des>2 <f, aes des f>4~ | <f aes des f>4 <ees aes c ees>-. <f bes des f>->~ |
	<f bes des f>2. | <ees c'>2 des'8 des~ |
	des c des ees e <bes f'>~ | <bes f'>2. |
	r2.\fermata | r2. | r2. | r2. | r2. | f'2. |
	c2 bes8 aes | f2. | f4 aes8 bes c16 des bes c |
	r8 c des c aes eis' | r c des c f g, | r g eis'4 des8 c |
	r g eis4 c'8 r | r f,16 aes c eis des aes f8 bes | r g16 bes des f ees bes g8 c |
	r aes16 c ees g f c aes8 c | r8 ees16 des c8 g16 ees f4~ | f4 r2 |
	\ottava #1 r2 <f' f'>4 | <f f'> r2 | <f f'>4 <f f'>4 r4 | r2.\fermata |
	f'4. f4 r8 | f8 f r4 c8 c\ottava #0 | r2. | f,4 f2 | c4 c2 f8 ees des c c bes |
	aes f bes aes g c, | f2. | r2. | r2. | r2. | r2. | c4 ees g | c ees g |
	aes4 ees c | aes c8 ees r4 | ees c aes | ees aes8 c aes4 | a8 bes b c des d | ees e f ges g aes |
	<aes c, ees aes,>2 <ees, aes c>4~ | <ees aes c>4 r2 | r2. | r2. |
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
	aes <c ees> <c ges'> | f <aes, f'> <aes des> |
	bes <ges des'>8 bes ges4 | c <aes ees'>8 c <aes ees'>4 |
	<aes des> <aes f'> <des f> | aes8 des f des f aes | <aes, des f aes>4 r2 |
	r2 r4 | r2 r4 | r2 r4 | r2 r4 | r2 r4 | <f des'>2 <aes aes'>4~ | <aes aes'>4 <c c'>-. <des des'>->~ |
	<des des'>2. | <c c'>2 r8 des8~ | des <aes f'>4. f'8 <g, des'>~ | <g des'>2. |
	r2.\ppp\< | f4 <aes c> <aes c> | c, <aes' c> <aes c> | f <aes c> <aes c> | c, <aes' c> <aes c>\mf |
	f <aes c> <aes c> | c, <aes' c> <aes c> | f <aes c> <aes c> |
	c, <aes' c> <aes c> | f <aes c> <aes c> | bes <des f bes> <des f bes> | g, <bes eis> <bes eis g> |
	c <eis bes' c> <c eis bes' c> | des <aes' c> <aes c> | des, <g bes> <g bes> | ees <aes c> <aes c> |
	ees <g c,> <f c> | r2. | <f,, f'>2 r4 | r4 <f f'>4 <f f'> | r2 <f f'>4~ | <f f'>2. | r2. | r2. | r2. |
	r2. | r2. | f''2 <c e>4 | r4 <bes des f>4. c8 | <aes c f>4 <c f> <c f> | <c g'> <a c f>2 |
	<c f>4 <c f>2 | <c f>4 <c f>2 | c4 ees g | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. |
	aes,4 <c ees> <c ees> | aes <c ees> <c ees> |
}

\score {
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