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
	f2. ees8 d | c a c4 b2 | ees8 c a4 bes2 | bes1 | \key bes \minor bes8 des c ees a, f' a, ees' |
	f2 f | f8 bes ges c f, a f a | ges des e c f c aes f | r1 |
	 r1 | f8 f f f g bes c c | f f f f c c aes4 | 
	
	 r2.
}

cello = \relative c
{
	\clef bass
	\key bes \major
	\time 4/4 \numericTimeSignature
	\partial 4
	
	r4 | d4 d bes' f | bes, d bes' f | f a bes bes, | f' a bes bes, |
	bes c f ees | ees b d f | c f d8( bes4.) | bes1 |
	\key bes \minor des4 c aes f' | f2( bes) | f4 bes f ges | aes e aes, aes8 aes | \tuplet 3/2 {f aes c } f8 f f16 des8. des16 c8. |
	\tuplet 3/2 {f,8 aes c} f8 f f16 c8. c16 f,8. | \tuplet 3/2 {f8 aes c} f8 f f16 des8. des16 c8. | \tuplet 3/2 {f,8 aes c} f8 f f16 c8. c16 f,8. |
	
	
	 r2.
}

upper = \relative c''
{
	\clef treble
	\key bes \major
	\time 4/4 \numericTimeSignature
	\tempo 4 = 60
	\partial 4
	
	f,4 | bes2 f'4 d4 | bes2 f'4 d | a4. c8 d2 |
	a4. c8 d2 | r2.
}

lower = \relative c
{
	\clef bass
	\key bes \major
	\time 4/4 \numericTimeSignature
	\partial 4
	
	r4 | bes4 <f' bes>8 <f bes>8 bes,4 <f' bes>8 <f bes>8 | bes,4 <f' bes>8 <f bes>8 bes,4 <f' bes>8 <f bes>8 | c4 <f a>8 <f a>8 bes,4 <f' bes>8 <f bes>8 |
	 c4 <f a>8 <f a>8 bes,4 <f' bes>8 <f bes>8 |r2.
	
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