\version "2.18.2"
\include "articulate.ly"
\header {
	title = "The Abyss"
	instrument = "Flute, Trumpet, Piano and Cello"
	tagline = ""
}

fluteMusic = \relative c''
{
	\clef treble
	\key bes \major
	\time 3/4
	bes2 a4 | bes4 a8 bes c4 | f4 c8 f4 ees8 | f8 bes,4 c8 f,4 | r2. | r2.| r2. |
	r8 ees8 d2 | r8 ees8 d2 | r2 f4 | g8--[( bes-.)] ees,--[( g-.)] c,--[( ees-.)] | f4 f8 f f f |
	ees8 ees ees2 | f2.-> | r8 f r f r f | r2. | r2. | r2. | r2. | bes16 bes c8 bes16 f'8. a,4 |
	bes2. |
%%	\tempo 4 = 50
	bes8 bes ges f4 ees8 | ees4~ ees16 c8. bes'4 |
}

trumpetMusic = \relative c''
{
	\clef treble
	\key bes \major
	\time 3/4
	r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. |
	r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. |
}

pianoUpper = \relative c''
{
	\clef treble
	\key bes \major
	\time 3/4
	r2. | r2. | r2. | r2. | f4 ees8 f f bes, | c2 c8 c | bes2. | a4 bes2 | a4 bes2 |
	r2 d4 | ees c bes | a a8 a a a | r4 a2 | <f bes des f>2.-> | r2. | r2. | r2. |
	r2. | r2. | r2. | r2. | des'4( ees8 <c ees>4 c8) | r2. |
}

pianoLower = \relative c
{
	\clef bass
	\key bes \major
	\time 3/4
	r2. | r2. | r2. | r2. | r2. | r2. | <bes f'>2. | <a f'>4 <bes f'>2 | <a f'>4 <bes f'>2 |
	r2 f'4 |  ees8(f g4) f | f f8 f f f | c c c2 | des2.-> | des8-. des-. des-. des-. a' des,-> |
	r2. | r2. | r2. | r2. | r2. | r2. | <bes des f bes>4 <bes ees ges>8 <c ees f a>4 <c ees ges>8 |
	<bes ees ges>8. r8 <bes c ees ges bes>8. <c ees ges>4 |
}

celloMusic = \relative c
{
	\clef bass
	\key bes \major
	\time 3/4
	r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. |
	des4 bes2 | bes4 f8( a4 c8) | ees4 f2 | a,4 c2 |  r2. | r2. | bes4 f8 a4 c8 |
	bes4 ees16 ges8. ees4 |
}

\score
{
	<<
		\new Staff = "Staff_Flute" \with { instrumentName = #"Flute" shortInstrumentName = #"Flt." midiInstrument = "flute" }
		\fluteMusic
		
		\new Staff = "Staff_Trumpet" \with { instrumentName = #"Trumpet"
		shortInstrumentName = #"Tpt." midiInstrument = "trumpet" }
		\trumpetMusic
		
		\new PianoStaff \with { instrumentName = #"Piano" shortInstrumentName = #"Pno." }
			<<
				\new Staff = "Staff_Piano_Upper" \pianoUpper
				\new Staff = "Staff_Piano_Lower" \pianoLower
			>>
		
		\new Staff = "Staff_Cello" \with { instrumentName = #"Cello" shortInstrumentName = #"Vc." midiInstrument = "cello" }
		\celloMusic
	>>
	\layout { }
	\midi { }
}

\paper
{
	indent = 1.75\cm
	short-indent = 0.75\cm
}