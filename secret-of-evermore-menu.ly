\version "2.23.13"
\include "english.ly"

\header {
  title = "Menu"
  subtitle = "from Secret of Evermore"
  composer = "Jeremy Soule"
  arranger = "arr. for organ by Maddy Blue"
}

\score {
  \midi { }
  \layout { }
  \header {
    piece = \markup {
      \column {
        \line { \bold Boven V. di Gamba 8, V. di Gamda zw 8 }
        \line { \bold Rug Holpijp 8 }
        \line { \bold Ped Octaaf 16, Open Subbas 16 }
      }
    }
  }
  <<
    \new PianoStaff <<
      % melody
      \new Staff
      \with { instrumentName = "Boven" }
      \relative c' {
        \time 4/4
        \key c \major

        \repeat unfold 8 { c8 b b d d a a c }
        \repeat unfold 8 { g' fs fs a a e e g }
      }

      \new Staff
      \with { instrumentName = "Rug" }
      \relative {
        \tempo 4 = 124
        \time 4/4
        \key c \major

        \repeat unfold 2 { <g' c, b g>1 ~ }
        \repeat unfold 2 { <fs c b g> ~ }
        \repeat unfold 2 { <e c b g> ~ }
        \repeat unfold 2 { <fs c b g> ~ }

        \repeat unfold 2 { <d' g, fs d>1 ~ }
        \repeat unfold 2 { <cs g fs d> ~ }
        \repeat unfold 2 { <b g fs d> ~ }
        \repeat unfold 2 { <cs g fs d> ~ }
      }
    >>

    % pedal
    \new Staff \relative {
      \time 4/4
      \key c \major
      \clef bass

      f,4. a'8 r4. e,8
      f4. a'8 r4. b,8
      c4. c'8 r4. g8
      c,4. c'4 g4.
      d4. d'8 r4. a8
      d,4. d'8 r4. a8
      d,4. d'8 r4. a8
      d,4. a8 d g a d,

      % m9
      e,4. e'8 r4. b8
      e,4. e'8 r4. fs,8
      g4. g'8 r4. d8
      g,4. g'4 d4.

      % m13
      a4. a'8 r4. e8
      a,4. a'8 r4. e8
      a,4. a'8 r4. e8
      a,4. e'8 a d e a,
    }
  >>
}
