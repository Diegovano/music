\version "2.18.2"
\header {
	title = "Concerto for Violin and Cello"
	subtitle = "in B flat Major"
	tagline = ""
}

violin = \relative c''
{
	\clef treble
	\key bes \major
	\time 4/4 \numericTimeSignature
	\partial 4
	
	 r4 | r1 | f1 | f16 d c f, f8 a bes4. f'8 |
	 f16 d c f, f8 a bes4. f'8 |
	 f2. ees8 d | c a c4 b2 | ees8 c a4 bes2 | bes2 r | \key bes \minor bes8 des c ees a, f' a, ees' |
	 f2 f | f8 bes ges c f, a f a | ges des e c f c aes f | r1 |
	 r1 | f8 f f f g bes c c | f f f f c c aes4 | 
	 \tuplet 3/2 {f8 aes c} f8 f f16 des8. des16 c8. | \tuplet 3/2 {f,8 aes c} f8 f f16 c8. c16 f,8. | r1 | r |
	 r | r | r | r | r |
	 r | r |
	 
	 r2.
}

cello = \relative c
{
	\clef bass
	\key bes \major
	\time 4/4 \numericTimeSignature
	\partial 4
	
	 r4 | d4 d bes' f | bes, d bes' f | f a bes bes, | f' a bes bes, |
	 bes c f ees | ees a, d f | c f d8( bes4.) | bes2 r |
	 \key bes \minor des4 c ees f | f2( bes) | f4 bes f ges | aes e aes, aes8 aes | \tuplet 3/2 {f aes c } f8 f f16 des8. des16 c8. |
	 \tuplet 3/2 {f,8 aes c} f8 f f16 c8. c16 f,8. | \tuplet 3/2 {f8 aes c} f8 f f16  des8. des16 c8. | \tuplet 3/2 {f,8 aes c} f8 f f16 c8. c16 f,8. |
	 r1 | f'8 f f f ees ees c4 | bes2 c8 g' c,4 | c8 g' c,4 c8 g' c,4 |
	 e8 des c16 des e f g8 g \acciaccatura g8 f4 | \acciaccatura aes8 g4 g8 d b2 | c c8 g' c,4 | d8 aes' d,4 d8 aes' d,4 | g8 f d16 c b aes d8 d \acciaccatura des8 c4 |
	 c2 g8 f'4 b,8 | c4 des bes16 c e g( f4) | f,2 r |
	
	
	 r2.
}

upper = \relative c''
{
	\clef treble
	\key bes \major
	\time 4/4 \numericTimeSignature
	\tempo 4 = 60
	\partial 4
	
	 f,4 | bes2 f'4 d4 | bes2 f'4 d | a4. c8 d2 | a4. c8 d2 |
	 bes2 a4 g | f4 a g2 | c f,8( bes4.) | <f bes d>2 r | \key bes \minor r1 |
	 <des f bes>2( <f bes des>) | r1 | r | r | r | r | r |
	
	
	r2. 
}

lower = \relative c
{
	\clef bass
	\key bes \major
	\time 4/4 \numericTimeSignature
	\partial 4
	
	 r4 | bes4 <f' bes>8 <f bes>8 bes,4 <f' bes>8 <f bes>8 | bes,4 <f' bes>8 <f bes>8 bes,4 <f' bes>8 <f bes>8 | c4 <f a>8 <f a>8 bes,4 <f' bes>8 <f bes>8 |
	 c4 <f a>8 <f a>8 bes,4 <f' bes>8 <f bes>8 |
	 bes,4 <c g' c>8 <c g' c> c4 <g' bes ees>8 <g bes ees>8 | f4 <c' f>8 <c f>8 d,4 <b' d>8 <b d> | c,4 <g' c ees>8 <g c ees> bes,8( <f' d' f>4.) | <f d' f>2 r | \key bes \minor f4 r8 ges a2 |
	 <f, des' f>2( <bes f' bes>) | r1 | r | r | r | r | r |
	
	
	
	r2. 
}

\score
{
	<<
		\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
		\new Staff = "violin" \with {
		instrumentName = #"Violin"
		midiInstrument = "violin"
		}
		\violin
		
		\new Staff = "cello" \with {
		instrumentName = #"Cello"
		midiInstrument = "cello"
		}
		\cello
		\new PianoStaff \with {
		instrumentName = #"Piano"
		}
		<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
		>>
	>>
	\layout {
	}
	\midi { }
}

\paper
{
	top-margin = 10
}