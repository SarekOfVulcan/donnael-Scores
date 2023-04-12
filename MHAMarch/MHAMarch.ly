\version "2.24.1"
\include "changePitch.ly"

\pointAndClickOff

\header {
  title = "M. H. A. March."
  subtitle = "Respectfully dedicated to M. H. Andrews"
  composer = "R. B. Hall"
  arranger = \markup { \smaller "edited by G. Fitzgerald" }
  copyright = "Public domain. Version 2023-04-10"
  tagline = ##f
}

rehearsalMarks = \relative c' {
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #2
  \set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 4)

  \time 6/8

  s2.*4
  \mark \markup { \circle "A" }
  \repeat volta 2 {
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  \mark \markup { \circle "B" }
  \repeat volta 2 {
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  \bar "||" \break
  \mark \markup { \bold "TRIO" }
  s2.*3
  \mark \markup { \circle "C" }
  \repeat volta 2 {
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  \mark \markup { \circle "D" }
  \repeat volta 2 {
    s2.*14 | 
  }
  \alternative {
    {s2. | s2. }
    {s2. | s2. \bar "|." }
  }
}

% Define patterns for changePitch/cPI/cPII/cPIII/cPIV
patI = { c4 r8 }
patII = { c4 c8 }
patIII = { c8[ r8 c8] }
patIV = { r8 \samePitch { c c } }

fluteOne = \relative c''' {

}

fluteTwo = \relative c''' {

}

oboeOne = \relative c'' {

}

bassoonOne = \relative c {

}

% clarinetInEb - dup of flute

clarinetOne = \relative c''' {

}

clarinetTwo = \relative c'' {

}

clarinetThree = \relative c'' {

}

clarinetBass = \relative c'' {

}

saxAlto = \relative c'' {

}

saxTenor = \relative c'' {

}

saxBaritone = \relative c' {

}

trumpetOne = \relative c' {

}

trumpetTwo = \relative c' {

}

cornetSolo = \relative c'' {
  \key f \major
  
  a8[\ff r a] d4.->( | c8) a-. bes-. b-. c-. cis-. | d8 r r e4.->\trill( | f4) r8 r4 r8 |
  %mark A
  \repeat volta 2 {
    a,8[\f r a] gis a bes | a[ r bes-.] b-. c-. cis-. | d8-. r r e,4.->~ | e8[ r e] e f fis |
    g8[ r g] fis g a | g8[ r gis] a bes b | c8 r r c,4.->~ | c8 d e f g gis |
    a8[ r a] gis a bes | a8[ r bes] b c d | e8 r r e,4.->~ | e8[ r e]\ff e f fis |
    g4->( fis16 g) c4->( b16 c) | e8-. f-. fis-. g4->( fis16 g) | a4( g8) f-. e-. d-. |
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c8-. c-.\ff c-. c-. c-. c-. | }
  }
  %mark B
  \repeat volta 2 {
    a4.-> a-> | a4.-> c,8 f g | a4.-> a-> | bes4.-> c,8 g' a |
    bes4.-> bes-> | bes4.-> e4( d8) | c8[ r c]( bes[) r bes]( | a8[) r a]( g[) r g]( |
    a4.->) a-> | a4.-> f8 g a | bes4.-> bes-> | bes8 r r d4.->\ff( |
    c8) d-. e-. f-. g-. a-. | bes8-. a-. g-. f-. e-. d-. | \acciaccatura d8( c8) b c a'4( g8) |
  }
  \alternative {
    { f8 c-.\ff c-. c-. c-. c-. | }
    { f4 f16 f f4 r8 | }
  }
  %TRIO
  \key bes \major
  f8\ff e ees d c bes | a8[ r f] d'4-> c8 | bes8 r f\p( g4 a8)
  %mark C
  \repeat volta 2 {
    f2.~ | f4 f8( g4 a8) | f2.~ | f4 f8( g4 ges8) |
    f4\cresc( ees'8) fis,4( ees'8) | g,4( ees'8) a,4( ees'8) | d8 bes g f4.->~\ff | f4 f8\p( g4 a8) |
    f2.~ | f4 f8 f g gis | a2.~ | a4 a8\< a bes b |
    c2.~\ff | c8 d-. c-. bes-. a-. g-. | f8 r r r4 r8 |
  }
  \alternative {
    { r4 f8\p( g4 a8) | }
    { r8 f'8-.\ff f-. f-. f-. f-. | }
  }
  %mark D
  \repeat volta 2 {
    d4.-> d-> | d4.-> d-> | d4( c8) g'4.~ | g4 g,8 a4 bes8 |
    c4.-> c-> | c4.-> c-> | c4( bes8) f'4.~ | f8 f,-. g-. a-. bes-. c-. |
    d4.-> d-> | d4.-> d-> | d4( c8) g'4.~ | g4 g,8 a4 bes8 |
    c4.( ees8[) r ees]( | d8[) r d]( c[) r c](
  }
  \alternative {
    { bes4) f'16-. f-. f4-. f16-. f-. | f8 f, g a bes c | }
    { b4\repeatTie f8( g4 a8) | bes4 bes16 bes bes4 r8 | }
  }
}

cornetOne = \relative c'' {

}

cornetTwo = \relative c' {

}

cornetThree = \relative c' {

}

hornOne = \relative c'' {

}

hornTwo = \relative c' {

}

hornThree = \relative c'' {

}

hornFour = \relative c' {

}

tromboneOne = \relative c' {

}

tromboneTwo = \relative c' {

}

tromboneThree = \relative c {

}

baritoneTC = \relative c'' {

}
		    
basses = \relative c {
  \key ees \major
  
  ees8[\ff r ees] a,4.->( | bes8) r r r4 r8 | r4 r8 <bes, bes'>4.->( | ees4) r8 r4 r8 |
  %mark A
  \repeat volta 2 {
    \cPI { ees\f bes' | ees, bes' | f bes | f bes |
      f bes | f bes| ees, bes' | ees, bes' |
      ees, bes' | ees, bes' | d, g | d g |
      bes bes | bes bes | f f | s }
  }
  \alternative {
    { bes4 r8 r4 r8 | }
    { bes4 r8 r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    \cPI { ees,\ff bes' | ees, bes' | ees, bes' | f bes |
           f bes | f bes | f bes | d, bes' | 
           ees, bes' | ees, bes' | aes aes | s } aes8 r r a4.->\ff( | 
    bes8) r r r4 r8 | r2. | r4 r8 <bes, bes'>4.->( |
  }
  \alternative {
    { ees4) r8 r4 r8 | }
    { ees4-. ees16-. ees-. ees4-. r8 | }
  }
  
  %mark TRIO
  s2.*3
  %mark C
  \repeat volta 2 {
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  %mark D
  \repeat volta 2 {
    s2.*14 | 
  }
  \alternative {
    {s2. | s2. }
    {s2. | s2. }
  }
}

drumSnareBass = \drummode {
  \clef percussion


}

percTimp = \relative c {

}

percBells = \relative c' {

}

dummyPart = \relative c'' {
  s2.*4
  %mark A
  \repeat volta 2 {
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  %mark B
  \repeat volta 2 {
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  
  %mark TRIO
  s2.*3
  %mark C
  \repeat volta 2 {
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  %mark D
  \repeat volta 2 {
    s2.*14 | 
  }
  \alternative {
    {s2. | s2. }
    {s2. | s2. }
  }
}
