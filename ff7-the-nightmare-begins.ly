\version "2.23.13"
\include "english.ly"

\header {
  title = "The Nightmare Begins"
  subtitle = "from Final Fantasy VII"
  composer = "Nobuo Uematsu"
  arranger = "arr. for organ by Maddy Blue"
}

\score {
  \header {
    piece = \markup {
      \column {
        \line { \bold Borst Gedekt 8 }
        \line { \bold Boven Baarpijp 8, Roerfluit 8, V. di Gamba 8, V. di Gamba zw 8 }
        \line { \bold Hoofd Some 4 }
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
        \time 9/8
        \key c \major

        \repeat unfold 6 { f'2. ~ f4. ~ }
        a2. ~ a4.
        e2. ~ e4.
        f2. ^ "+8" ~ f4. ~
        \repeat unfold 5 { f2. ~ f4. ~ }
        e2. ^ "-4, +2 2/3" ~ e4. ~
        e2. ~ e4.
      }

      \new Staff
      \with { instrumentName = "Rug" }
      \relative {
        \key c \major
        \time 9/8

        r8 cs'' a f' a, cs f a, cs
        g' a, cs f a, cs f a, cs
        r c a f' a, c f a, c
        g' a, c f a, c f a, c
        r b a f' a, b f' a, b
        g' a, b f' a, b f' a, b
        r bf a g' a, bf f' a, bf
        e a, bf f' a, bf g' a, bf

        % m9
        r8 cs a f' a, cs f a, cs
        g' a, cs f a, cs f a, cs
        r c a f' a, c f a, c
        g' a, c f a, c f a, c
        r b a f' a, b f' a, b
        g' a, b f' a, b f' a, b
        <d, a' bf cf e>2. \arpeggio ~ <d a' bf cf e>4. ~
        <d a' bf cf e>2. ~ <d a' bf cf e>4.
      }
    >>

    % pedal
    \new Staff \relative {
      \time 9/8
      \key c \major
      \clef bass

      \repeat unfold 7 { d'2. ~ d4. ~ d2. ~ d4. }
      r2. r4. r2. r4.
    }
  >>
}
