\version "2.23.13"
\include "english.ly"

\header {
  title = "Another World of Beasts"
  subtitle = "from Final Fantasy VI"
  composer = "Nobuo Uematsu"
  arranger = "arr. for organ by Maddy Blue"
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
      \relative c''' {
        \tempo 4 = 90
        \time 7/8
        \key gf \major

        r2.. r
        bf2 ~ bf8 f4 gf2 ~ gf8 af4 bf2.. r
        bf2 ~ bf8 f4 gf2 ~ gf8 af4 ff2.. cf'
        bf2 ~ bf8 f4 gf2 ~ gf8 af4 bf2.. r
        \repeat unfold 2 { cf,4 gf'4. f4 ef df4. cf4 ef2.. r }
        bf'2. \tuplet 3/2 { bff16 af aff }
        gf2. \tuplet 3/2 { f16 ff ef }
        d2.. bf
        bf'2. \tuplet 3/2 { bff16 af aff }
        gf2. \tuplet 3/2 { f16 ff ef }
        d2.. r
      }

      \new Staff
      \with { instrumentName = "Pos" }
      \relative {
        \time 7/8
        \key gf \major
        \clef bass

        \repeat unfold 8 { ef8[ gf bf] d[ bf] d[ bf] }
        \repeat unfold 2 { ff[ af df] eff[ df] eff[ df] }
        \repeat unfold 4 { ef,8[ gf bf] d[ bf] d[ bf] }
        \repeat unfold 2 { ef,[ bf' cf] ef[ cf] ef[ cf] }
        \repeat unfold 2 { ef,8[ gf bf] d[ bf] d[ bf] }
        \repeat unfold 2 { ef,[ bf' cf] ef[ cf] ef[ cf] }
        \repeat unfold 2 { ff,[ af c] ef[ c] ef[ c] }

        \clef treble
        \repeat unfold 8 { ef'16[ ef gf ef f ef] d[ ef ef ef] bf[ ef d ef] }
      }
    >>

    % pedal
    \new Staff \relative c, {
      \time 7/8
      \key gf \major
      \clef bass

      r2.. r
      \repeat unfold 3 { ef2.. ~ ef }
      ff ~ ff
      \repeat unfold 5 { ef2.. ~ ef }
      ff ~ ff
      \repeat unfold 4 { ef2.. ~ ef }
    }
  >>
}

% m09: 0:25
% m17: 0:51
% m21: 1:04
% m24: 1:14 (big argeppio)
% m25: 1:17
% m27: 1:23
% m28: 1:26
% m29: 1:29
% m30: 1:32
% m31: 1:35
% m32: 1:38
% m33: 1:42 (b section)
