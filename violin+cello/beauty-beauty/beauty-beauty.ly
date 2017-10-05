\version "2.18.2"

\header {
  title = "Beauty Beauty"
  composer = "David Brymer"
  arranger = "Felippe Roza"
}

global= {
  \time 4/4
  \key c \major
}

violinOne = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Violin"

  r2 c8 b4.
  c8 b4. c8 b a4~ 
  a r a8 g4.
  a8 g4. a8 g e4~ 
  e r e g~
  g1~
  g4 r d g~
  g2 b
  a4 r c8 b4.
  c8 b4. c8 d e4~ 
  e r a,8 g4.
  a8 g4. g'8 f e4~ 
  e r g e~
  e1~
  e4 r g d~
  d1
  a4 a a a
  a a a a
  f f f f
  f f f8 g a b
  c4 c c c
  c c d c
  b b b b
  e,2 c'4 e
  e2 e
  c4 d e f
  e2 e
  c4 d e f
  e2 e
  c4 d e c
  d1

  \bar "|."
}

cello = \new Voice \relative c' {
  \set Staff.instrumentName = #"Cello "
  \clef bass

  c2 b
  a1

 % \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff << \global \violinOne >>
    \new Staff << \global \cello >>
  >>
  \layout { }
  \midi { }
}