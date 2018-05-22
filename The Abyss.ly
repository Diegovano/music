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
	\time 6/8
	bes2 a4 | bes4 a8 bes c4 | f4 c8 f4 ees8 | f8 bes,4 c8 f,4 | r2. | r2.| f2. |
	f4 f2 |
}

\trumpetMusic = \relative c''
{
	\clef treble
	\key bes \major
	\time 6/8
	r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. |
}

\pianoUpper = \relative c''
{
	\clef treble
	\key bes \major
	\time 6/8
	r2. | r2. | r2. | r2. | f4 ees8 f f bes, | c2 c8 c | bes2. | a4 bes2 |
}

\pianoLower = \relative c
{
	\clef bass
	\key bes \major
	\time 6/8
	r2. | r2. | r2. | r2. | r2. | r2. | <bes f'>2. | <c f>4 <d f>2 |
}

\celloMusic = \relative c
{
	\clef bass
	\key bes \major
	\time 6/8
	r2. | r2. | r2. | r2. | r2. | r2. | r2. | r2. |
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