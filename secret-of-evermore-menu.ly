\version "2.23.13"
\include "english.ly"

\header {
  title = "Menu"
  subtitle = "from Secret of Evermore"
  composer = "Jeremy Soule"
  arranger = "arr. for organ by Maddy Whittier"
}

\score {
  \header {
    piece = \markup {
      \column {
        \line { \bold Réc Flûte Trav. 8 }
        \line { \bold Pos Principal 8 }
        \line { \bold GO Gambe 8, Doublette 2 }
        \line { \bold Ped Soubasse 16, B. Doux 8 }
      }
    }
  }
  <<
    \new PianoStaff <<
      \new Staff
      \with { instrumentName = "Réc" }
      \relative {
        \tempo 4 = 74
        \time 4/4
        \key c \major

        r
      }

      % melody
      \new Staff
      \with { instrumentName = "Pos" }
      \relative {
        \time 4/4
        \key c \major

        r
      }
    >>

    % pedal
    \new Staff \relative {
      \time 4/4
      \key c \major
      \clef bass

      d,4. a'8 r4. e8
      d4. a'8 r4. e8
      f4. c'8 r4. g8
      f4. c'8 r8 a4.
      g4. d'8 r4. a8
      g4. d'8 r4. a8
      g4. d'8 r4. a8
      g4
    }
  >>
}
