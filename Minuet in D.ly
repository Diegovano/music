\version "2.18.2"
\header {
	title = "Minuet in D"
	subtitle = "22/06/2018"
	tagline = ""
}

upper = \relative c''
{
	\clef treble
	\key d \major
	\time 4/4
	\tempo 4 = 70
	d4 a8 b d fis e4 | b8 cis e g a4 e8 fis | cis4. d8-. e4 b'8 a |
	e4 e e8 cis d4 | d8 d4 cis8 b a cis e | a4 e8 d4 r4. |
	e8 e4 d8 cis b d fis | e4 g8 fis4 r4. | e8 cis4 cis8 b a cis e |
	a4 e8 d4 r4. | d4 d8 e g4 r | ais4 ais8 ais ais r a4 |
	d,2 r2 | e16 d4 r8. e16 d4 r8. | d4 a8 b d fis e4 |
	b8 cis e g a4 cis, | b'4 cis8 r8 d2 | d,,8 e fis g4 e8 b r |
	e g cis e g b4. | a8 fis e cis e d4. |

}

lower = \relative c
{
	
}

\score
{
	\new PianoStaff \with {
	instrumentName = #"Piano"
	}
	<<
		\set Score.proportionalNotationDuration = #(ly:make-moment 1/7.5)
		\new Staff = "upper" \upper
		\new Staff = "lower" \lower
	>>
	\layout {
	}
	\midi { }
}