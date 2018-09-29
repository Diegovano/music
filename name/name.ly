\version "2.18.2"
\header {
 tagline = ""
}
upper = \relative c' {
  \clef treble
  \key a \major
  \time 4/4
  d4 b' <e e,>4 gis,16 a8. | r2 a16 a gis8 r4 |
  a16 a e8 d16 b e8 e16 gis a8 <e e'>4 |
}
lower = \relative c {
  \clef bass
  \key a \major
  \time 4/4
  e8 g b, e gis4 <a a,> |
}

\score {
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}