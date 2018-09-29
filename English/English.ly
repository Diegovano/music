\version "2.18.2"
%%\header { 
%%  tagline = ""  % removed 
%%} 
upper = \relative c' {
  \clef treble
  \key bes \major
  \time 4/4
  \repeat volta 1 { <f bes d>4 d'8 c bes f bes d16 bes | <g c ees>4 ees'8 d c g c ees16 c |}
  <f, bes d>4 <f a c> <bes f d> r|
  }
lower = \relative c {
  \clef bass
  \key bes \major
  \time 4/4
  \repeat volta 1 { <bes bes'>2 g'8 (<bes, d~ f~>4 <d f bes>8) | <c c'>2 a'8 (<c, ees~ g~>4 <ees g c>8) |}
  <bes f'>4 <a f'> <bes f'> r|
  }
\score {
  \new PianoStaff \with { instrumentName = #"Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}