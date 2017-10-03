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
  a4

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