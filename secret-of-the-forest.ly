% Adapted from https://musescore.com/starsoarer/scores/3089246

\version "2.23.13"

\include "english.ly"

\header {
  title = "Secret of the Forest"
  subtitle = "from Chrono Trigger"
  composer = "Yasunori Mitsuda"
  arranger = "arr. for organ by Maddy Whittier"
}

\score {
  \header {
    piece = \markup {
      \column {
        \line { \bold Réc Flûte Trav. 8 }
        \line { \bold Pos Principal 8 }
        \line { \bold Ped Soubasse 16, B. Doux 8 }
      }
    }
  }
  <<
    \new PianoStaff <<
      \new Staff
      \with { instrumentName = "Réc" }
      \relative {
        \tempo 4 = 74
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

        % m17
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

        % m21
        bf, ef f bf
        bf, ef f bf
        bf, ef f bf
        bf, ef f bf
        bf, ef f bf
        bf, ef f bf
        bf, ef f bf
        bf, ef f bf

        % m23
        c, ef g af
        c, ef g af
        c, ef g af
        c, ef g af

        % m24
        f,,32 g af c
        ef f g af
        f g af c
        ef f g af
        f g af c
        ef f g af
        g ef c af
        g f c af

        % m25
        f'16 gf bf df f df bf gf
        f gf bf df f df bf gf
        f gf a df f df a gf
        f gf a df f df a gf

        % m27
        f af c ef f ef c af
        f af c ef f ef c af
        f af c ef f ef c af
        f af c ef f ef c af

        % m29
        f gf bf df f df bf gf
        f gf bf df f df bf gf
        f gf a df f df a gf
        f gf a df f df a gf

        % m31
        f bf c ef f ef c bf
        f bf c ef f ef c bf
        f a c ef f ef c a
        f a c ef f ef c a

        % m33
      }

      % melody
      \new Staff
      \with { instrumentName = "Pos" }
      \relative {
        \time 4/4
        \key df \major
        r1 r r r r r r r
        c''2 bf4 ef8. d32 df c2 bf4 af
        g2 f4 bf8. a32 af g2. f16 g af bf
        c2 bf4 ef8. d32 df c2 f8. g af16 bf
        c4 ~ c8. bf32 af g4 ~ g8. f16 g2. r4

        f8. f f r \tuplet 3/2 { ef8 af df, }
        c32 df c8. ~ c2 \tuplet 3/2 { bf8 ef af, }
        g32 af g8. ~ g2. r1

        f'8. f f r \tuplet 3/2 { ef8 af df, }
        c32 df c8. ~ c2 \tuplet 3/2 { bf8 ef af, }
        g32 af g8. ~ g2. r1

        f'2 ef4 af8. g32 gf f2 ef4 df
        c2 bf4 ef8. d32 df c2 ~ c8 bf8 ~ bf16 c df ef
        f2 ef4 af8. g32 gf f2 ef4 af
        f1 c1
      }
    >>

    % pedal
    \new Staff \relative {
      \time 4/4
      \key df \major
      \clef bass
      gf,2. ~ gf8. df'16 gf,2. gf'4
      f2. ~ f8. c16 f,2. r16 f r gf ~
      gf2. ~ gf8 df' gf,8. gf16\staccato r8 gf4. gf'4
      f2. ~ f16 c8 f16 f,8. f16 r8. f16 ~ f4. r16 c'

      gf2. ~ gf8. df'16 gf,2. gf'4
      f2. ~ f8. c16 f,2. r16 f r gf ~
      gf2. ~ gf8 df' gf,8. gf16\staccato r8 gf4. gf'4
      f2. ~ f16 c8 f16 f,8. f16 r8. f16 ~ f4. r16 c'

      % m17
      gf2. ~ gf8. df'16 gf,2. gf'4
      f2. ~ f8. c16 f,2. r16 f r gf ~
      gf2. ~ gf8 df' gf,8. gf16\staccato r8 gf4. gf'4
      f2. ~ f16 c8 f16 f,8. f16 r8. f16 ~ f4. r16 c'

      % m25
      ef2 bf'4 ~ bf16 ef, df8
      b2 gf'4 b,
      bf2 f'4 bf
      bf,2 f'4 bf,

      ef2 bf'4 ~ bf16 ef, df8
      b2 gf'4 b,
      c2 g4' c
      f2, c2

      % m31
      %bf
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
