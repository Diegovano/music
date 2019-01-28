\version "2.18.2"
\header {
	title = "Concerto for Violin and Cello"
	subtitle = "in B flat Major"
	tagline = ""
	composer = "D Van Overberghe"
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
	 r | r | r | f8 aes g bes f c' g16\pp g8. | ges16\p ges8. a4 f4. c'8 |
	 bes2 c8 ges' c,4 | c8 ges' c,4 c8 ges' c,4 | f8 f f16 ees des c bes8 c c16 bes aes g | f8 g g16 f ees d c8 d d16 ees fis g |
	 g4 a8 c d4 ees | ees8 a, f2 r4 | \key bes \major r1 | f'1 | f16 d c f, f8 a bes4. f'8 |
	 f16 d c f, f8 a bes4. f'8 | \repeat volta 2 { f2 f16 ees a, c c4 | f16 ees d c a4 c8 ees ees4 | ees16 d bes bes ees,4 f8 g a4 | }
	 \alternative { { f16 a c a f' c f8 d2 | } { g,16 a bes g f c' r8 r2 | } } r1 | r |
	 r | bes2\pp bes4.. a16 | c4.. e16 bes2 |
	 
	 
	 
	 r2.
}

cello = \relative c
{
	\clef bass
	\key bes \major
	\time 4/4 \numericTimeSignature
	\partial 4
	
	 r4 | d4 d bes' f | bes, d bes' f | f a bes bes, | f' a bes bes, |
	 bes c f ees | c a aes d | c f d8( bes4.) | bes2 r |
	 \key bes \minor des4 c ees f | f2( bes) | f4 bes f ges | aes e aes, aes8 aes | \tuplet 3/2 {f aes c } f8 f f16 des8. des16 c8. |
	 \tuplet 3/2 {f,8 aes c} f8 f f16 c8. c16 f,8. | \tuplet 3/2 {f8 aes c} f8 f f16  des8. des16 c8. | \tuplet 3/2 {f,8 aes c} f8 f f16 c8. c16 f,8. |
	 r1 | f'8 f f f e e c4 | bes2 c8 g' c,4 | c8 g' c,4 c8 g' c,4 |
	 e8 des c16 des e f g8 g \acciaccatura g8 f4 | \acciaccatura aes8 g4 g8 d b2 | c c8 g' c,4 | d8 aes' d,4 d8 aes' d,4 | g8 f d16 c b aes d8 d \acciaccatura des8 c4 |
	 c2 g8 f'4 b,8 | c4 des bes16 c e g( f4) | f,2 r | r1 | r |
	 r | r | f'4 r des8 f r4 | c8 ees r d16 r g8 d r a16 r |
	 g'4 ees d bes | f' r2. | \key bes \major  d4 d bes' f | bes, d bes' f | f a bes bes, |
	 f' a bes bes, |
	 \repeat volta 2 { bes8 f' d f a f a, f' | d f ees c ees c g' c, | g ees' ees g, d' c f c | }
	 \alternative { { ees c f, a bes2 | } { bes8 d f4 r2 | } } r1 | r |
	 r | r | r |
	 
	
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
	 bes2 a4 g | c2 f,4 aes | c2 f,8( bes4.) | <f bes d>2 r | \key bes \minor r1 |
	 <des f bes>2( <f bes des>) | r1 | r | r | r | r | r | r | r | r | r | r | r | r |
	 r | r | r | r | r | r | r | r | r | r | r |
	 r | r2. f4 | \key bes \major bes2 f'4 d4 | bes2 f'4 d a4. c8 d2 |
	 a4. c8 d2 | \repeat volta 2 { f2 c4 a | bes2 c4 a | bes2 r4 f | }
	 \alternative { { a4 c4 bes2 | } { <g d'>4\mp <f c'> << { e2( } { < f bes>2~ } >> } } << { d2) } { <f bes>2\pp } >> r |  r4\mf\< d16-"legatiss." f bes d\> bes f d bes r4
	 | r4\< d16 f bes d\> bes f d bes r4 | r4\! d16-"simile" f bes d bes f d bes r4 |
	 r4 c16 a' c c bes f d bes r4 |
	
	
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
	 bes,4 <c g' c>8 <c g' c> c4 <g' bes ees>8 <g bes ees>8 | ees4 <c' f>8 <c f>8 aes4 <d f>8 <d f> | c,4 <g' c ees>8 <g c ees> bes,8( <f' d' f>4.) | <f d' f>2 r | \key bes \minor f4 r8 ges a2 |
	 <f, des' f>2( <bes f' bes>) | r1 | r | r | r | r | r | r | r | r | r | r | r | r |
	 r | r | r | r | r | r | r | r | r | r | r | r | r |
	 \key bes \major bes4 <f' bes>8 <f bes>8 bes,4 <f' bes>8 <f bes>8 | bes,4 <f' bes>8 <f bes> bes,4 <f' bes>8 <f bes> | c4 <f a>8 <f a> bes,4 <f' bes>8 <f bes> |
	 c4 <f a>8 <f a> bes,4 <f' bes>8 <f bes>8 | \repeat volta 2 { f,4 <bes f'>8 <bes f'> f4 <c' a'>8 <c a'> | bes4 <d bes'>8 <d bes'> r4 <c g' c>4 | <bes g' bes>2.( <c f c'>4) | }
	 \alternative { { <c f c'>2( <bes d bes'>) | } { <bes g' bes>4 <c a'> <bes d f bes>2~ | } } <bes d f bes>2 r | bes,8 bes'16 f' r2 f16 d bes f |
	 bes,8 bes'16 f' r2 f16 d bes f | bes,8 bes'16 f' r2 f16 d bes f |
	 c8 a'16 a' r2 f16 d bes f |
	
	
	
	r2. 
}

\score
{
	<<
		\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
		
		\new Staff = "violin" \with {
		\override DynamicText #'X-extent = #'(0 . 2)
		instrumentName = #"Violin"
		midiInstrument = "violin"
		}
		\violin
		
		\new Staff = "cello" \with {
		\override DynamicText #'X-extent = #'(0 . 2)
		instrumentName = #"Cello"
		midiInstrument = "cello"
		}
		\cello
		\new PianoStaff \with {
		\override DynamicText #'X-extent = #'(0 . 2)
		instrumentName = #"Piano"
		}
		<<
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
		>>
	>>
	\layout {
	}
}

\score {
	\unfoldRepeats
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
	\midi { }
}

\paper
{
	top-margin = 10
}