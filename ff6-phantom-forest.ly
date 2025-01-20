\version "2.23.13"
\include "english.ly"

\header {
  title = "The Phantom Forest"
  subtitle = "from Final Fantasy VI"
  composer = "Nobuo Uematsu"
  arranger = "arr. for organ by Maddy Blue"
}

\score {
  \header {
    piece = \markup {
      \column {
        \line { \bold Borst Gedekt 8 }
        \line { \bold Boven Baarpijp 8, Roerfluit 8, V. di Gamba 8, V. di Gamba zw 8 }
        \line { \bold Hoofd Openfluit 8 }
        \line { \bold Rug Praestant 8 }
        \line { \bold Ped Trompet 4 }
      }
    }
  }
  <<
    \new PianoStaff <<
      \new Staff
      \with { instrumentName = "Hoofd" }
      \relative c' {
        \time 3/4
        \key c \major

        \repeat unfold 2 {
          e8 <a c> e4 e8 <a c>
          f <a c> f4 f8 <a c>
          fs <a c> fs4 fs8 <a c>
          f <a c> f4 f8 <a c>
        }

        <<
          {
            a2. ^ "Boven + Borst" ~ a ~ a c2 b4
            a2. ~ a ~ a ~ a
            a ~ a ~ a c2 b4
            bf2. a c
            bf ~ bf ~ bf ~ bf
            bf4 a g a2. ~ a ~ a
            c2 b4
            a2. ~ a ~ a ~ a
          }\\{
            \repeat unfold 3 { e2. f fs f }
            f e f g f e f g e f fs f e f fs f
          }\\{
            \repeat unfold 3 { c2. ~ c ~ c ~ c }
            \repeat unfold 2 { d ~ d ~ d ~ d }
            \repeat unfold 2 { c ~ c ~ c ~ c }
          }
        >>

        % m37
        <c a'>4 <d b'> <e c'> <f d'> <e c'> <d b'> <c a'>2. ~ <c a'>
        <a' f'> <f d'> <a c> <f a> <e g> ~ <e g> <g bf> ~ <g b>

        % m49
        r4 <g b> <a c> <e g>2.
        r4 <d fs> <e g> <c e>2.
        <c a'>4 <d b'> <e c'> <f d'> <e c'> <d b'> <c a'>2. ~ <c a'>

        <<
          {
            a'4 g f ~ f g a
          } \\ {
            c,2. d2.
          }
        >>

        % m59
        <ef bf'>2. ~ <ef bf'> <f c'> ~ <f c'>
        <g d'> ~ <g ef'> ~ <g e'> ~ <g ef'>
      }

      \new Staff
      \with { instrumentName = "Rug" }
      \relative {
        \key c \major
        \time 3/4

        r2. r r r

        <<
          {
            \repeat unfold 4 {
              a8 e' a2
              a,8 f' a2
              a,8 fs' a2
              a,8 f' a2
            }
            bf,8 f' bf2
            bf,8 e bf'2
            bf,8 f' bf2
            bf,8 g' bf2
            bf,8 f' bf2
            bf,8 e bf'2
            bf,8 f' bf2
            bf,8 g' bf2
            \repeat unfold 2 {
              a,8 e' a2
              a,8 f' a2
              a,8 fs' a2
              a,8 f' a2
            }

            % m37
            \repeat unfold 2 {
              f,8 c' f2
              f,8 d' f2
              f,8 e' f2
              f,8 d' f2
            }
            c8 g' c2
            c,8 a' c2
            c,8 bf' c2
            c,8 b' c2
            c,8 g' c2
            c,8 a' c2
            c,8 b' c2
            c,8 bf' c2

            % m53
            f,,8 c' f2
            f,8 d' f2
            f,8 e' f2
            f,8 d' f2
            f,8 c' f2
            d,8 a' d2
            ef,8 bf' ef2
            ef,8 c' ef2
            f,8 c' f2
            f,8 d' f2
            g,8 d' g2
            g,8 ef' g2
            g,8 e' g2
            g,8 ef' g2
          } \\ {
            a,2. ~ a
            a ~ a
            a a8 a r4 r
            r2.
            r4 a8' f b, gs
            a2. a8 a r4 r
            r r8 a b c
            b c d4 r
            a2.
            a8 a r4 r
            r2.
            r4 a'8 f b, d
            bf2. bf8 bf r4 r
            r2.
            r8 bf' e, g f d
            bf2 ~ bf8 a16 bf
            c2 ~ c8 bf16 a
            bf2. ~ bf
            a a8 a r4 4
            r2.
            r4 a8' f b, gs
            a2. a8 a r4 r
            r r8 a b c
            b c d4 r

            % m37
            f,4. c'8 g' e
            f2. ~ f4. c8 g' e f2.
            f2 ~ f8 e16 f d2. c2 ~ c8 b16 c
            a2. g2 g'4 c,2. ~ c ~
            c4 e d c2. g'2 f4 e2. c
            f,4. c'8 g' e
            f2. ~ f4. c8 g' e f2.
            f2 ~ f8 e16 f
            d2. ef ~ ef4 bf g
            f2. f'4 c ef d2.
            g,2. ~ g ~ g
          }
        >>

      }
    >>

    % pedal
    \new Staff \relative {
      \time 3/4
      \key c \major
      \clef bass

      r2. r r r r r r r
      a,4 c' b a g f e2. ~ e4 c d e2. ~ e
      r r
      a,4 c' b a g f e2. ~ e4 c d e2 f4 d2. ~ d
      r2.
      e'2 f4 d2. ~ d d4 c bf a2. ~ a
      r r r r r r r r r r
      a4 b c d c b a2.
      a4 g a b2 c4 g b, c a'2. g
      r r r r r r r r
      a4, b c d e f g2 bf4 a2 bf4
      g2. ~ g4 bf a8 f g2. ~ g ~ g4 r r r2.
    }
  >>
}
