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
        \line { \bold Réc Trompette 8 }
        \line { \bold Pos Principal 8, Salicional 8 }
        \line { \bold GO Flûte Harm. 8 }
        \line { \bold Ped Contrebasse 16 }
      }
    }
  }
  <<
    \new PianoStaff <<
      \new Staff
      \with { instrumentName = "Pos" }
      \relative c''' {
        \tempo 4 = 90
        \time 7/8
        \key gf \major

        r2.. r
        bf2 ~ bf8 f4 gf2 ~ gf8 af4 bf2.. r
        bf2 ~ bf8 f4 gf2 ~ gf8 af4 ff2.. cf'
        bf2 ~ bf8 f4 gf2 ~ gf8 af4 bf2.. r
        \repeat unfold 2 { cf,4 gf'4. f4 ef df4. cf4 ef2.. r }

        bf'2. ^ "Pos: +Réc" \tuplet 3/2 { bff16 af aff }
        gf2. \tuplet 3/2 { f16 ff ef }
        d2.. bf
        bf'2. \tuplet 3/2 { bff16 af aff }
        gf2. \tuplet 3/2 { f16 ff ef }
        d2.. r
      }

      \new Staff
      \with { instrumentName = "GO" }
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
        ef'16[ ^ "GO: Gambe 8" ef gf ef f ef] d[ ef ef ef] bf[ ef d ef]
        \repeat unfold 7 { ef[ ef gf ef f ef] d[ ef ef ef] bf[ ef d ef] }
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
      ef2.. ^ "Ped: Gr. Flûte 8" ~ ef
      <ef gf> ~ <ef gf>
      <ef gf bf> ~ <ef gf bf>
      <ef gf bf d> ~ <ef gf bf d>
    }
  >>
}
