\version "2.23.13"
\include "english.ly"

\header {
  title = "The Nightmare Begins"
  subtitle = "from Final Fantasy VII"
  composer = "Nobuo Uematsu"
  arranger = "arr. for organ by Maddy Blue"
}

\score {
  \midi { }
  \header {
    piece = \markup {
      \column {
        \line { \bold Boven Openfluit 4 }
        \line { \bold Hoofd Octaaf 8 }
        \line { \bold Rug Quintadeen 16 }
        \line { \bold Ped Open Subbas 16 }
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
        f2. ^ "+ Roerfluit 8" ~ f4. ~
        \repeat unfold 5 { f2. ~ f4. ~ }
        e2. ^ "- Openfluit 4, + Roerquint 2 2/3" ~ e4. ~
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

        % m17
        r8 ^ "Hoofd" fs c' df c fs, df' c fs,
        r fs b cs b fs cs' b fs
        r fs bf cs bf fs cs' bf fs
        r fs b cs b fs cs' b fs
        r fs c' df c fs, df' c fs,
        r fs b cs b fs cs' b fs
        r fs bf cs bf fs cs' bf fs
        r fs b cs b fs cs' b fs

        % m25
        a' a, fs a' a, fs a' a, fs
        c'' a, fs bf' a, fs a' a, fs
        g' d bf g' d bf g' d bf
        g' d bf g' d bf g' d bf
        g' cs, bf g' cs, bf g' cs, bf
        bf' e, cs a' e cs g' e cs
        \repeat unfold 6 { f d a }
        \repeat unfold 3 { a' a, fs }
        c'' a, fs bf' a, fs a' a, fs
        g' d bf g' d bf g' d bf
        bf' e, d a' e d g e d
        f a, bf f' a, bf f' a, bf
        f' c b g' cs, bf gs' d b
        a' e cs a' e cs a' e cs
        <cs e a>2. \arpeggio ~ <cs e a>4.
      }
    >>

    % pedal
    \new Staff \relative {
      \time 9/8
      \key c \major
      \clef bass

      \repeat unfold 7 { d'2. ~ d4. ~ d2. ~ d4. }
      r2. r4. r2. r4.
      d,2. ^ "Octaaf 8" ~ d4.
      \repeat unfold 7 { d2. ~ d4. }
      d2. ~ d4. ~ d2. ~ d4.
      g2. ~ g4. g,2. ~ g4.
      cs2. ~ cs4. e2. ~ e4.
      d2. ~ d4. ~ d2. ~ d4.
      d2. ~ d4.
      d2. ~ d4. ~ d2. ~ d4.
      a2. ~ a4.
      d2. ~ d4.
      d d e
      a,2. ~ a4.
      r2. r4.
    }
  >>
}
