% Adapted from https://musescore.com/starsoarer/scores/3089246

\version "2.23.13"

\include "english.ly"

\header {
  title = "Secret of the Forest - Chrono Trigger"
  composer = "Yasunori Mitsuda"
  arranger = "arr. for organ by Maddy Whittier"
}

\new PianoStaff <<
  \new Staff \relative {
    \time 4/4
    \key df \major
    bf'16 ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf

    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af

    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf

    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af

    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf

    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af

    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf
    bf, ef f bf

    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
    c, ef g af
  }

  % melody
  \new Staff \relative {
    \time 4/4
    \key df \major
    r1 r r r r r r r
    c''2 bf4 ef8. d32 df c2 bf4 af
    g2 f4 bf8. a32 af g2. f16 g af bf
    c2 bf4 ef8. d32 df c2 f8. g af16 bf
    c4 ~ c8. bf32 af g4 ~ g8. f16 g2. r4
  }

  % pedal
  \new Staff \relative {
    \time 4/4
    \key df \major
    \clef bass
    gf,2. ~ gf8. df'16 gf,2. gf'4
    f2. ~ f8. c16 f,2. r16 f r f
    gf2. ~ gf8 df' gf,8. gf16\staccato r8 gf4. gf'4
    f2. ~ f16 c8 f16 f,8. f16 r8. f16 ~ f4. r16 c'

    gf2. ~ gf8. df'16 gf,2. gf'4
    f2. ~ f8. c16 f,2. r16 f r f
    gf2. ~ gf8 df' gf,8. gf16\staccato r8 gf4. gf'4
    f2. ~ f16 c8 f16 f,8. f16 r8. f16 ~ f4. r16 c'
  }
>>
