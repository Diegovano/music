\version "2.18.2"
\include "articulate.ly"
\header { 
 tagline = ""  % removed 
} 
upper = \relative c' {
  \clef treble
  \key d \major
  \time 4/4
  d'2\mp d4 d4 | d8 d8 <d a>4 d8 <cis e,>4 <e, cis' e>8 |
  <fis fis'>8 fis16 g a fis g a cis d c d fis8 d16 a |
  d8 fis, a fis16~ <fis d>8. a8\noBeam ais a |
  <e e'>8 b' <g g'> <a a'> e' g b, e |
  g\< b, d g <g, g'> d' <b' b,> <cis,~ a'~-^>\!\f |
  <cis a'>4 <e, a cis>4\arpeggio\pp cis'8\< b16 a e fis a cis\!\p |
  r8 cis16\mark "rall." e  r8 a, cis <a cis> <b~ d~>4\< |
  <b d>4 <c e>4\mark "a tempo" <a c>16 <g b> <fis a c>8 <g b d>4\!\f |
  g2\mp g4 g | g8 g <d g>4 g
  }
lower = \relative c {
  \clef bass
  \key d \major
  \time 4/4
  r1 | r4 <fis d>4 <b, g'>8 <a cis e g a>4 <cis e g a>8 |
  <a d a'>4 r2. |
  d8 a' fis8.~\noBeam <d fis>8.\noBeam d8\noBeam cis d |
  <g g,> d <b b'> <cis cis'> e r4. |
  b8 r4. <b' b,>8 fis <d' d,> <e,~-^ cis'~> |
  <e cis'>4 <a, e' a>4\arpeggio a e' |
  a,8 e' cis4. <g' a>8 <b~ fis~ b,~>4 |
  <b, fis' b>4 <c g' c>4 fis16 e <d a'>8 <g, g'>4 |
  r1 | r4 <b g'> <g' c,>
  }
\score {
 %\articulate <<
  \new PianoStaff \with { instrumentName = #"Piano" }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  %>>
  \layout { }
  \midi { }
}