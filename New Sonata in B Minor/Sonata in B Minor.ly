\version "2.18.2"
\header {
	dedication = \markup { \char ##x00C0 "Madame C. Jamet" }
	title = \markup { \vspace #2 \fontsize #5 \bold "Sonate" }
	subtitle = "en Ti Mineur"
	subsubtitle = \markup { \vspace #1 "" }
	tagline = ""
	composer = "D Van Overberghe"
}

\paper {
	top-margin = 20
	bottom-margin = 10
	left-margin = 15
	right-margin = 15
	
	system-system-spacing.basic-distance = #20
	
	print-page-number = ##t
	print-first-page-number = ##t
	oddHeaderMarkup = \markup \null
	evenHeaderMarkup = \markup \null
	oddFooterMarkup = \markup {
		\fill-line {
			\line { \italic { Sonate en Ti Mineur } }
			\center-column {
				\on-the-fly \print-page-number-check-first
				\fromproperty #'page:page-number-string
			}
			\line { \italic \tiny { 2 Juillet 2019 } }
		}
		\vspace #1.5
	}
	evenFooterMarkup = \oddFooterMarkup
}

flute = \relative c''
{
	\clef treble
	\key b \minor
	\time 4/4 \numericTimeSignature
	\tempo 4 = 120
	b2~ b8 ais g'4 | fis ais,( b2) | b8( cis b cis d cis d e | fis4) ais,( b2) | \tuplet 3/2 {fis8 ais cis} fis g fis4 e |
	d16( cis d e cis4 cis16 d e fis d4 | fis16 e fis g e4 e16 fis g ais fis4) | 
	fis ais,( b2) | e2 fis8( e b d | cis2) fis8( e b d | g2) a8( g d fis) | e4 fis g2 |
	g4 g fis8 g a4 | e8 fis g4 d2 | d8 e d4 a8 g a4 | fis8 a d4 g2 | g,8 a b c b4 g | d'8 e fis g fis4 d | g8 d b d c c16 c c4 | c8 a fis a d2 | d4( c~ c a-.) | r a a2 | d4( b~ b g-.) | r g g2 |
	d'4( c~ c a | fis2) d'4 g~ | g c g8 e c4( | d1) | d4( c~ c a-.) | r a a2 | d4( b~ b g-.) | r g g2 | d'4( c~ c a | ees'2) g4( d~ | d) a_( d8 fis, a4 | b1) | d4 fis, g2 | d'4 fis, e2 | c'8 b a g a4 d | d8 b a g fis2 | d'4 fis, g2 | d'4 fis, e2 | c'8( b g fis e d e fis | ees2~) ees4 d_. | r1 
	\once \hide Score.MetronomeMark \tempo 4 = 75
	
	| g'4\pp^\markup { \small "Andante" } g f8 g a4 | ees8 f g4 d2 | d8 ees d4 a8 g a4 | fis8\< a d4 a2\! | r1 | r r | r | r | r | a8 b a e g4 e' | fis,8 g fis ais b2 | fis8\ppp g fis ais b2 | 
	\once \hide Score.MetronomeMark \tempo 4 = 120
	b2--~\mf^\markup { \small "Tempo Primo" } b8 ais g'4 | fis ais,( b2) | b8( cis b cis d cis d e | fis4) ais,( b2) | \tuplet 3/2 { fis8 ais cis } fis8 g fis4  e | d16( cis d e cis4 cis16 d e fis d4 | fis16 e fis g e4 e16 fis g ais fis4) | fis ais,( b2) | e fis8( e b d | cis2) fis8( e d e | fis2) r8 g,8 fis g | ais2 cis | b4 b a8 b cis4 | g8 a b4 fis2 | fis8 g fis4 cis'8 b cis4 | fis,8 ais cis4 b2 | b8 cis d e d4 b | fis8 g ais b ais4 fis | b8 fis d fis e e16 e e4 | fis ais b2 | fis4 g~ g fis | b2 cis4 b~ | b1 \bar "|."
}

upper = \relative c''
{
	\clef treble
	\key b \minor
	\time 4/4 \numericTimeSignature
	d16 e d cis d4~ d8 cis b ais16 g | fis4. e8 d16 e d cis d4 | d fis e g | fis4. fis8 d16 e d cis d4 | cis4 cis8 b cis4 fis4 | fis cis'8 fis, g4 d'8 g, | a4 e'8 a, b4 fis'8 b, | cis4 cis, d'2 | b cis | cis,8( \stemDown fis a cis fis2) | b,,8( d g b d2) | \stemNeutral c,8 e a c b2 | b8 c b g a4 d | c e d8 e d4 | d a16 b a g a4 d16 c d e | fis4 \tuplet 3/2 {fis8 e fis} g16 d b a g4 | b8 r b a g2 | a8 r a g fis2 | b e8 r e4 | e2 g2 | <b, g'>4( <a e'>~ <a e'>) r | r1 | <d, a'>4( <d b'>~ <d b'>) r | r1 |
	<b g'>4( <c e c'>~ <c e c'> <e c' e>) | <d a' d>2~ <d a' d>4 r | d <c a' e'>4~ <c a' e'>2 | <g' g'>1 | <b g'>4( <a e'>~ <a e'>) r | r1 | <d, a'>4( <d b'>~ <d b'>) r | r1 | <b g'>4( <c e c'>~ <c e c'> <e c' e>) | <ees_~ g^~ c^~>2 <ees g c>4 <fis d'>4~ | <fis d'> <fis a d>~ <fis a d>2 | <d g d'>1 | fis2 <d g d'> | a' <e g e'> | <e c'>4( <c c'>) <e a> fis | fis a d2 | fis,2 <d g d'> | a' <e g e'> | e'4 b g e | c' <ees, c' ees>2 <d b' d>4_. | r1 |
	
	r | r | r | r | g4 g a8 g f4 | g8 f ees4 d2 | a'8 g a4 d8 ees d4 | d8 a fis4 e2 | b'8 bes b4 e8 fis e4 | e8 b g4 <cis, g' a>2 | <d fis a> <b e g> | <cis fis ais> <d fis b> | <cis fis ais> <d fis b> | d'16 e d cis d4~ d8 cis b ais16 g | fis4. e8 d16 e d cis d4 | d fis e g | fis4. fis8 d16 e d cis d4 | cis cis8 b cis4 fis | b, \stemUp cis'8( fis, cis4) d'8( g, | d4) \stemDown e'8( a, e4) \stemNeutral fis'8 b, cis4 cis, d'2 | b cis | \stemDown cis,8( fis a cis fis2) | cis,8( fis ais cis fis2) | \stemNeutral r1 | fis8 e fis g fis4 a, | e' e8 g fis4 g8 fis | d4 e8 d cis4 ais8 b | cis2 d | e4 b g8 a g e | fis4 cis' cis8 d cis ais | fis4 a g b | fis8 cis' fis4 d2 | d4 e~ e fis | <fis, b d>2 <cis ais'>4 <fis b>4~ | <fis b>1 \bar "|."
} 

lower = \relative c
{
	\clef bass
	\key b \minor
	\time 4/4 \numericTimeSignature
	<b d b'>2~ <b d b'>8 r r4 | r <ais fis' cis'> <d fis b>2 | <b d fis b>1 | fis4 <fis cis' fis>4 <b d fis>2 | << { fis'2 e4 fis } \\ { <ais, cis>1 } >> | <b d b'>2 <cis e g> | <a d a'> <g b e> | <fis cis' fis> <fis d' fis> | <g b g'>2 << { <cis fis>2 } \\ { a'8 cis b d } >> | <cis, fis>2 << { <cis fis>2 } \\ {a'8 cis b cis } >> | <g, b d>2 r | a4 d <b d g>2 | <d g b>1 | <c g'>2 <a d> | <a d a'> <fis d' fis> | a'8 fis d4 <g, b>2 | <g b>8-. r <g b>4~ <g b>4. a16 c | <a d>8-. r <a d>4~ <a d>4. a16 fis | \set doubleSlurs = ##t <g b>8-. r <g b>4( <a c>2) \set doubleSlurs = ##f | a'8 fis d a b2 | g4 <a c>~ <a c> r | r1 | fis4 <g d'>~ <g d'> r | r1 |
	g4 <a e'>~ <a e'> <c a'> | <d fis>2~ <d fis>4 r | r <a~ e'_~ a~> <a e' a>2 | <b d b'>1 | g4 <a c>~ <a c> r | r1 | fis4 <g d'>~ <g d'> r | r1 |
	g4 <a e'>~ <a e'> <c a'> | <c g'>2~ <c g'>4 <a fis'>~ | <a fis'> <fis d' fis>~ <fis d' fis>2 | <b d g>1 |
	d,2 g | c b | <a c>~ <a c>4 d | <a fis'>2 r | d, g | c b | <a c>4( <g e'> <g b e> <g b e g>) | g4 <g c g'>2 <b d>4_. | r1
	
	r | r | r | r | <g d'>2 <f f'> | <ees ees'> <d d'> | <fis d'> <a d> | <a fis'> <b e g> | <b b'> <e b'> | <b e g> <g cis g'> | <a d fis> e'4 g, | fis2 d' | fis, b | <b d b'>~ <b d b'>8 r r4 | r <ais fis' cis'> <d fis b>2 | <b d fis b>1 |
	fis4 <fis cis' fis> <b d fis>2 | << { fis'2 e4 fis } \\ { <ais, cis>1 } >> | <b d b'>2 <cis e g> | <a d a'> <g b e> | <fis cis' fis> <fis d' fis> | <g b g'>
	<< { <cis fis>2 } \\ { a'8 cis b d } >> | <cis, fis>2 << { <cis fis>2 } \\ { a'8 cis b d } >> | <fis,, ais fis'>2 r | r1 | <fis b fis'>2 a | <cis e cis'>2 <cis e fis cis'> | <ais cis e> <fis ais cis e> | e'8 cis ais g fis2 | <g b e> <e g e'> | <fis cis' fis> fis8 cis' e4 | <fis, d' fis>2 <g b e> | <fis cis' fis> <b d fis> <fis d'>4 <e b' e>~ <e b' e> <fis e' fis>4 | <d' fis b>2 <e, cis' e>4 <b fis' b>~ | <b fis' b>1 \bar "|."
}

\score
{

	<<
		\new Staff = "flute" \with {
		instrumentName = #"Flute"
		midiInstrument = "flute"
		}
		\flute
	
		\new PianoStaff \with {
		instrumentName = #"Piano"
		}
		<<
			\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
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
		\new Staff = "flute" \with {
		instrumentName = #"Flute"
		midiInstrument = "flute"
		}
		\flute
	
		\new PianoStaff \with {
		instrumentName = #"Piano"
		}
		<<
			\set Score.proportionalNotationDuration = #(ly:make-moment 1/12)
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