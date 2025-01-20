\version "2.23.13"
\include "english.ly"

\header {
  title = "Hard Man"
  subtitle = "from Mega Man III"
  composer = "Bun Bun"
  arranger = "arr. for organ by Maddy Blue"
}

\score {
  \midi { }
  \layout { }
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
      \relative c'' {
        \tempo 4 = 144

        \repeat unfold 2 {a8 a c16 a8 d16 ~ d e8 d16 ~ d8 c16 b}
        a8 c b16 g8 a16 r c8 b16 b8 g
        f g a16 e'8 b16 ~ b2
        \repeat unfold 2 {a8 a c16 a8 d16 ~ d e8 d16 ~ d8 c16 b}
        a8 c b16 d8 c16 r c8 e16 d8 f
        e g c16 b8 a16~ a2

        % m9
        a,8 g a16 g8 a16 ~ a4 a16 b c e
        d4 b8. g16~ g4 r
        d'8 d c16 b8 d16 ~ d4 e16 d c b
        a8 a a16 g8 a16 ~ a4 r
        a8 g8 a16 g8 a16 ~ a4 a16 b c e
        d4 b8. g16 ~ g4 r
        d'8 d c16 b8 d16 ~ d4 e16 d c b
        a8 a a16 g8 a16 ~ a4 r
        \repeat unfold 2 {b8 c b a b8. g16 ~ g4}
        g8. f g8 a8. g a8
        b8. a b8 c8. b c8
        \key f \major
        d8 d f16 a8 g16 ~ g8 f e d
        f e d16 c8 d16 ~ d2
        d8 d f16 g8 a16 ~ a8 g a bf
        c bf a16 g8 f16 ~ f2
        d8 d f16 a8 g16 ~ g8 f e d
        f e d16 c8 d16 ~ d2
        d'8 c bf16 a8 g16 ~ g8 a c d
        f e d16 c8 d16 ~ d d,, d8 d d16 d
      }

      \new Staff
      \with { instrumentName = "GO" }
      \relative c'' {
        \repeat unfold 2 {c8 c f,16 f8 g16~ g g8 g16 ~ g4}
        a8 c b16 g8 a16 r c8 b16 b8 g
        a, b c16 c8 d16 ~ d2
        \repeat unfold 2 {c'8 c f,16 f8 g16~ g g8 g16 ~ g4}
        a8 c b16 d8 c16 r c8 e16 d8 f
        e16 g a c d, e g a~ a2

        % m9
        \clef bass
        \repeat unfold 2 {r8 a,, r16 a8 r16 a g8 a16 r4}
        r8 g r16 g8 r16 g e8 g16 r4
        \repeat unfold 3 {r8 a r16 a8 r16 a g8 a16 r4}
        r8 g r16 g8 r16 g e8 g16 r4
        r8 a r16 a8 r16 a g8 a16 r4
        d,2 g
        \clef treble
        b d4 \tuplet 3/2 { a''32[ g fs] e[ d cs] b[ a g] fs[ e d] }
        b'16 d f a g f b, d f a g f b, d f a
        g f b, d f a g f b, d f g b d f a
        \key f \major
        d,,8 d f16 a8 g16 ~ g8 f e d
        f e d16 c8 d16 ~ d a'8. g8 d
        d d f16 g8 a16 ~ a8 g a bf
        c bf a16 g8 f16 ~ f a g f g a c, d
        d8 d f16 a8 g16 ~ g8 f e d
        f e d16 c8 d16 ~ d d c d f e d c
        c8 c c16 a8 c16 r c8 a16 c8 a
        c c c16 a8 d16 r c' c8 c c16 c
      }
    >>

    % pedal
    \new Staff \relative c' {
      \clef bass

      \repeat unfold 3 {a8 r g r16 fs r fs8. f8 e}
      d d f16 f8 g16 ~ g2
      \repeat unfold 3 {a8 r g r16 fs r fs8. f8 e}
      e e e16 e8 a16 ~ a2


      % m9
      a16 a r8 r a16 a r4 r8 a16 gs
      g g r8 r g16 g r4 r8 g16 fs
      e e r8 r e16 e r d' e, r d' e, d' e
      f, f r8 r f16 f r d' f, r d' f, d' f
      a, a r8 r a16 a r4 r8 a16 gs
      g g r8 r g16 g r4 r8 g16 gs
      e e r8 r e16 e r d' e, r d' e, d' e
      f, f r8 r f16 f r d' f, r d' f, d' f
      f,8 f f'16 e d f, r f8 f16 f' e d c
      f,8 f f'16 e d f, r f8 f16 f' e d c
      \repeat unfold 2 {f,8 f16 f d' f8 f,16 r f8 f16 f8 f16 f}
      \key f \major
      bf, a bf8 bf'16 bf,8 c16 r c8 a16 c'8 c,
      d16 c d8 d'16 d,8 d16 r d8 c16 d'8 d,
      bf16 a bf8 bf'16 bf,8 c16 r c8 a16 c'8 c,
      d16 c d8 d'16 d,8 d16 r d8 c16 d'8 d,
      bf16 a bf8 bf'16 bf,8 c16 r c8 a16 c'8 c,
      d16 c d8 d'16 d,8 d16 r d8 c16 d'8 d,
      bf16 a bf8 bf'16 bf,8 c16 r c8 a16 c'8 c,
      d16 c d8 d'16 d,8 d16 r ef ef8 ef ef16 ef
    }
  >>
}
