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
        <f' c'>4 <f b>2. ~ <f b>2 r
        <f c'>4. <f b>8 ~ <f b>2

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

        c,,,2 ^ "Chimes"
        bf4 ^ "GO" c df1
        r2 bf4 c <df f>2
        s8 df32[ f a c] df[ f af a] df df df df
        c,,2 ^ "Chimes"
        bf4 ^ "GO" c df1
        r2 bf4 c <df f>1

        <c ef>2 <bf d g> <bf ef fs> <df f bf>4 ~ <df f c'>
        <g c ef>2 <bf d g> <bf ef fs> <df f bf>4 ~ <df f c'>

        \key bf \major
        c,4 ^ "Chimes"
        \tuplet 3/2 {
          <d' fs>8\staccato
          <d fs>\staccato
          <d fs>\staccato
        }
        <d fs>\staccato
        <c e>\staccato
        <d fs>\staccato
        <ef g>\staccato
        <f a>1

        e4 d8 c af2
        r8 ef'' df cf af4 bf8 cf
        g e c'2.
        g8 ef c2 d8 ef
        d bf g'2.
        df8 a g'2. ~

        \repeat unfold 8 {
          \tuplet 3/2 {
            g32,[ b cs] d[ g b] cs[ b g] d[ cs b]
          }
        }
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

        r2 <ef, f>4 <d g> <df af'>1
        r2 <ef f bf>4 <d g> <df af'>2
        df32[ f af a] s8 s s
        r2 <ef f>4 <d g> <df af'>1
        r2 <ef f bf>4 <d g> <df af'>1

        c2 bf fs f c d ef f

        \key bf \major
        r1 r4
        \tuplet 3/2 {
          <f' a>8\staccato
          <f a>\staccato
          <f a>\staccato
        }
        <f a>\staccato
        <ef g>\staccato
        <f a>\staccato
        <g bf>\staccato

        <<
          {
            af1' ef e
          } \\ {
            c2 c cf4 \tuplet 3/2 { cf8 cf cf } cf2 c8 c c2.
          } \\ {
            af4 \tuplet 3/2 { af8 af af } af2
            af4 \tuplet 3/2 { af8 af af } af2
            g8 g g2.
          }
        >>

        <<
          {
            ef1 d
          } \\ {
            <g c>4. <g c>8 <g ef'>4 <g c>
            <bf d>4. <bf d>8 <bf f'>4 <bf d>
          }
        >>

        <df, a' df>2 <c af' c>
        <b g' b>1 ~ <b g' b>
      }
    >>

    % pedal
    \new Staff \relative {
      \time 4/4
      \key c \major
      \clef bass

      e1 ~ e ~ e ~ e ~ e ~ e
      <f, f'>4 <f f'>2. ~ <f f'>2 r
      <f f'>4. <f f'>8 ~ <f f'>2

      \repeat unfold 46 { s2. }

      \key ef \major
      \time 4/4
      \repeat unfold 4 { c1 ~ c4 r r2 }
      c2' bf fs f c d ef f

      \key bf \major
      c1 ~ c f ~ f
      c' ~ c g g ~ g ~ g
    }
  >>
}
