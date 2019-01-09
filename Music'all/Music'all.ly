\version "2.18.2"
\header {
	title = ""
	subtitle = ""
	tagline = ""
}

flute = \relative c''
{
	\clef treble
	\tempo 4 = 60
	\partial 32
	
	 e,32^\markup{\tiny {Play upbeat as Acciaccatura} } | c'4 \acciaccatura {e,8} c'4 \acciaccatura {g8} d'2 | e4 e8 c d a d b | g8 r g r f r f r | r1 |
	 g8 r b r d r \acciaccatura {b8} d4 | e4 e8 c d a d b | c4 c8 g a f f b | c2 ees8 d c4 | c8 ees d r d r c4 |
	 ees8 r d r c r g4 | r16 g' r g r8 f d4 f | g g, f'8 e b c~ | c4 g f'8 e b c~ c1 | 
}

violin = \relative c''
{
	\clef treble
	\partial 32
	
	 r32 | g4 g g2 | r1 | b4 b8 g a e a f | r1 |
	 g16 g g g d'8 c b a g4 | g8 r g r f r f r | g4 g8 c a d d b | c2 c8 b g4 | ees8. ees16 g8 b f b ees,4 |
	 c16 c c c d8 f f b c4 | c16 c c c b8 a g4 d | c c a'8 a d, e | d e c4 a'8 a d, e16 e | e1
}

cello = \relative c,
{
	\clef bass
	\partial 32
	
	 r32 | c'4 e8 e g8 g4. | r1 | r1 | c,16 c c c g'8 f e d c4 |
	 r8 d' r g, r f g4 | c,4 c8 e d a' b d | e r c r d r b r | r ees8 c4 c8 d ees4 | c16 c c c g8 f e d c4 |
	 g r8 aes r g c4 | c d d d | e
}

\score
{
	<<
		\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
		
		\new Staff = "flute" \with {
		instrumentName = #"Flute"
		midiInstrument = "flute"
		}
		\flute
		
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
	>>
	\layout { }
	\midi { }
}

\paper
{
	top-margin = 10
}