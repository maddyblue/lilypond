\version "2.23.13"
\include "english.ly"

\header {
  title = "Opening Theme"
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
      \with { instrumentName = "GO" }
      \relative c'' {
        \time 4/4
        \key c \major

        r1 r r g ~ <g c> ~ <g c f>
        <f' c'>4 <fs b>2. ~ <fs b>2 r
        <f c'>4. <fs b>8 ~ <fs b>2

        \time 3/4
        \repeat unfold 4 { b8 e, a g cs e, }
        \repeat unfold 4 { c' gf bf af ef' gf, }
        \repeat unfold 4 { b e, a g cs e, }
        \repeat unfold 4 { c' gf bf af ef' gf, }
        d' g, c bf e g,
        d' bf c g e' bf
        d g, c bf e g,
        d' bf c g e' bf
        d fs, c' a e' fs,
        d' a c fs, e' a,
        d fs, c' a e' fs,
        d' a c fs, e' a,
        % m34
        d g, c bf e g,
        d' bf c g e' bf
        d g, c bf e g,
        d' bf c g c bf
        d fs, c' a e' fs,
        d' a c fs, e' a,
        % m46
        d fs, c' a e' fs,
        d' a c fs, e' a,
        d f, c' af ef' f,
        d' af c f, ef' af,
        d f, c' af ef' f,
        d' af c f, ef' af,
        % m46
        c e, b' g d' e,
        c' g b e, d' g,
        c e, b' g d' e,
        c' g b e, d' g,
        b d, a' f c' d,
        b' f a d, c' f,
        % m47
        b d, a' f c' d,
        b' f a d, c' f,\fermata
        g d f a b g
        d' f g4\fermata r

        \key ef \major
        \time 4/4

        c,,,1 r
      }

      \new Staff
      \with { instrumentName = "GO" }
      \relative {
        \key c \major
        \time 4/4

        \clef bass
        r1 a ~ <a d> ~ <a d> ~ <a d> ~ <a d>
        \clef treble
        <gs' c e>4 <gs b ds>2. ~ <gs b ds>2 r
        <gs c e>4. <gs b ds>8 ~ <gs b ds>2

        \repeat unfold 46 { s2. }

        \clef bass
        \key ef \major
        \time 4/4

        r2 <ef, f bf>4 <d g c> <df af' df>1
      }
    >>

    % pedal
    \new Staff \relative {
      \time 4/4
      \key c \major
      \clef bass

      e1 ~ e ~ e ~ e ~ e ~ e
      <f f'>4 <f f'>2. ~ <f f'>2 r
      <f f'>4. <f f'>8 ~ <f f'>2

      \repeat unfold 46 { s2. }

      \key ef \major
      \time 4/4
      \repeat unfold 4 { c,1 ~ c4 r r2 }
      r1 r
      c2 d ef f
    }
  >>
}
