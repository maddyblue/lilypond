\version "2.23.13"
\include "english.ly"

\header {
  title = "Dreams of the Shore Near Another World"
  subtitle = "from Chrono Cross"
  composer = "Yasunori Mitsuda"
  arranger = "arr. for organ by Maddy Blue"
}

\score {
  \header {
    piece = \markup {
      \column {
        %\line { \bold Boven stop }
      }
    }
  }
  <<
    \new PianoStaff <<
      % melody
      \new Staff
      \with { instrumentName = "" }
      \relative c' {
        \time 4/4
        \key f \major
        \tempo 4 = 86

        r1 r r r r
        d2 d'
        f,2. d8 f
        a2 ~ a8 bf4 a8
        g2. f8 e
        d2 d'
        f,2. d8 f
        a2 ~ a8 bf4 a8
        g2. f8 e
        d2 f4 ~ f8. e32 f
        e2 c4 ~ c8 a
        c d d2. ~ d1
        r4 d f ~ f8. e32 f
        e2 g2 ~ g4 g d4. e16 f
        e1 r
      }

      \new Staff
      \with { instrumentName = "" }
      {
        \time 4/4
        \key f \major

        r1
        \repeat unfold 3 {
          r8 a16 d' r a e' f' r8 a16 f' r a e' f'
          r8 f16 f' r f e' f' r8 f16 e' r f d'8
          r8 c'16 a' r c' g' a' r8 c'16 bf' r c' a'8
          r8 g16 g' r g f' g' r8 g16 f' r g e'8
        }
        r8 f16 d' r f c' d' r8 f16 d' r f c' d'
        r8 e16 c' r e b c' r8 e16 c' r e b c'
        r8 a16 e' r a c' d' r8 a16 e' r a c' d'
        r8 a16 e' r a c' d' r8 a16 e' r a c' d'
        r8 f16 d' r f c' d' r8 f16 d' r f c' d'
        r8 e16 c' r e b c' r8 e16 c' r e b c'
        r8 d16 b r d a b r8 d16 b r d a b
        r8 e16 cs' r e b c' d'8 c' f'16 e' e'8
        e'1
      }
    >>

    % pedal
    \new Staff \relative c {
      \time 4/4
      \key f \major
      \clef bass

      r2 r4 r8 a
      d2. ~ d8 c16 d
      bf2 ~ bf8 f' bf, f'
      f,2 ~ f8. c16' f g f8
      c2 ~ c8. g16 c d c8
      d2. ~ d8 c16 d
      bf2 ~ bf4 f'8 bf,
      f2 ~ f8. c'16 f g f8
      c2 ~ c8. g16 c d c8
      d2. ~ d8 d
      bf2 ~ bf8 f4 bf8
      f'2 ~ f8. c16 ~ c8 f
      c2 ~ c8 c g c

      % m14
      bf2. ~ bf8 bf
      a4. e'8 a,4 a
      d4. a'8 d4 d,
      c'32 d16. c16 a r g a8 ~ a4 d,
      bf4. f' bf,4
      a4. e' a,4
      g2 ~ g8 g d' g,
      a2 ~ a16 a8 e'16 g a g8
      a4. g e4
    }
  >>
}
