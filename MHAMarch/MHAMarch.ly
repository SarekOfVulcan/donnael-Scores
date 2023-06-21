\version "2.24.1"
\include "changePitch.ly"

\pointAndClickOff

\header {
  title = "M. H. A. March."
%  subtitle = \markup { \italic \smaller "Respectfully dedicated to M. H. Andrews" }
  composer = "R. B. Hall"
  arranger = \markup { \smaller "edited by G. Fitzgerald" }
  copyright = "Public domain. Version 2023-06-16"
  tagline = ##f
}

rehearsalMarks = \relative c' {
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
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
  \key f \major
  a8[\ff r a] d4.->( | c8) a-. bes-. b-. c-. cis-. | d8 r r e4.->\trill( | f4) r8 r4 r8 |
  %mark A
  \repeat volta 2 {
    a,8-.[\f r a-.] gis-. a-. bes-. | a8-.[ r bes-.] b-. c-. cis-. | 
    d8-. r r e,4.->~ | e8[ r  e] e f fis |
    g8[ r g] fis g a | g8[ r gis-.] a-. bes-. b-. | 
    c8 r r c,4.->~ | c8 d e f g gis |
    a8[ r a] gis-. a-. bes-. | a8[ r bes] b-. c-. d-. |
    e8 r r e,4.->~ | e8[ r e]\ff e-. f-. fis-. |
    g4->( fis16 g) c4->( b16 c) | c8-. d-. dis-. e4->( dis16 e) |
    f4( e8) d-. c-. b-. | 
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
    c8) d,-. e-. f-. g-. a-. | bes8-. a-. g-. f-. e-. d-. |
    \acciaccatura d8( c8)( b c) a'4( g8) |
  }
  \alternative {
    { f8 c'-.\ff c-. c-. c-. c-. | }
    { f,4 f16 f f4 r8 | }
  }
  
  %mark TRIO
  \key bes \major
  f'8-.\ff e-. ees-. d-. c-. bes-. | a8[ r f] d'4->( c8) | bes8[ r f]\p( g4 a8) |
  %mark C
  \repeat volta 2 {
    f8-. g-. a-. bes-. c-. cis-. | d4-. f,8( g4 a8) | 
    f8-. g-. a-. bes-. c-. d-. | ees4-. f,8( g4 ges8) |
    f4\cresc( ees'8) fis,4( ees'8) | g,4( ees'8) a,4( ees'8) |
    d8-.\ff bes-. g-. f4.->~ | f4 f8\p( g4 a8) |
    f8-. g-. a-. bes-. c-. cis-. | d4-. f,8 f-. g-. gis-. |
    a8-. d,-. e-. fis-. g-. gis-. | a4\< a8-. a-. bes-. b-. |
    c2.\ff~ | c8 d-. c-. bes-. a-. g-. | f4-. r8 r4 r8 |
  }
  \alternative {
    { r4 f8\p( g4 a8) | }
    { r8 f-.\ff f-. f-. f-. f-. | }
  }
  %mark D
  \repeat volta 2 {
    d'4.-> d-> | d4.-> d-> | d4( c8) g4.->~ | g4 g8( a4 bes8) |
    c4.-> c-> | c4.-> c-> | c4( bes8) f4.->~ | f8 f-. g-. a-. bes-. c-. |
    d4.-> d-> | d4.-> d-> | d4( c8) g4.->~ | g4 g8 a4 bes8 |
    c4.( \cPIII{ ees) ees( | d) d( c) c( s} 
  }
  \alternative {
    { bes4) f16 f f4 f16 f | f8 f-. g-. a-. bes-. c-. | }
    { bes4\repeatTie f8( e4 ees8) | d4 d16 d16 d4 r8 | }
  }
}

clarinetTwo = \relative c'' {
  \key f \major
  f8[\ff r f] gis4.->( | a8) a-. bes-. b-. c-. cis-. | d8 r r bes4.->( | a4) r8 r4 r8 |
  %mark A
  \repeat volta 2 {
    a8-.[\f r a-.] gis-. a-. bes-. | a8-.[ r bes-.] b-. c-. cis-. | 
    d8-. r r e,4.->~ | e8[ r  e] e f fis |
    g8-.[ r g-.] fis-. g-. a-. | g8-.[ r gis-.] a-. bes-. b-. | 
    c8-. r r c,4.->~ | c8 d e f g gis |
    a8[ r a] gis-. a-. bes-. | a8[ r bes] b-. c-. d-. |
    e8 r r e,4.->~ | e8[ r e]\ff e-. f-. fis-. |
    g4->( fis16 g) c4->( b16 c) | e,8-. f-. fis-. g4->( fis16 g) |
    a4( g8) f-. e-. d-. | 
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c8-. c-.\ff c-. c-. c-. c-. | }
  }
  %mark B
  \repeat volta 2 {
    a'4.-> a-> | a4.-> c,8 f g | a4.-> a-> | bes4.-> c,8 g' a |
    bes4.-> bes-> | bes4.-> e,4( d8) | c8[ r c]( bes'[) r bes]( | a8[) r a]( g[) r g]( |
    a4.->) a-> | a4.-> f8 g a | bes4.-> bes-> | bes8 r r gis4.->\ff( |
    a8) d,-. e-. f-. g-. a-. | bes8-. a-. g-. f-. e-. d-. |
    \acciaccatura d8( c8)( b c) a'4( g8) |
  }
  \alternative {
    { f8 c-.\ff c-. c-. c-. c-. | }
    { f4 f16 f f4 r8 | }
  }
  
  %mark TRIO
  \key bes \major
  f8-.\ff e-. ees-. d-. c-. bes-. | a8[ r f] f'4->( ees8) | d8[ r f]\p( g4 a8) |
  %mark C
  \repeat volta 2 {
    f8-. g-. a-. bes-. c-. cis-. | d4-. f,8( g4 a8) | 
    f8-. g-. a-. bes-. c-. d-. | ees4-. f,8( g4 ges8) |
    f4\cresc( ees'8) fis,4( ees'8) | g,4( ees'8) a,4( ees'8) |
    d8-.\ff bes-. g-. f4.->~ | f4 f8\p( g4 a8) |
    f8-. g-. a-. bes-. c-. cis-. | d4-. f,8 f-. g-. gis-. |
    a8-. d,-. e-. fis-. g-. gis-. | a4\< a8-. a-. bes-. b-. |
    c2.\ff~ | c8 d-. c-. bes-. a-. g-. | f4-. r8 r4 r8 |
  }
  \alternative {
    { r4 f8\p( g4 a8) | }
    { r8 f-.\ff f-. f-. f-. f-. | }
  }
  %mark D
  \repeat volta 2 {
    d'4.-> d-> | d4.-> d-> | d4( c8) g4.->~ | g4 g8( a4 bes8) |
    c4.-> c-> | c4.-> c-> | c4( bes8) f4.->~ | f8 f-. g-. a-. bes-. c-. |
    d4.-> d-> | d4.-> d-> | d4( c8) g4.->~ | g4 g8 a4 bes8 |
    c4.( \cPIII{ ees) ees( | d) d( c) c( s} 
  }
  \alternative {
    { bes4) f16 f f4 f16 f | f8 f-. g-. a-. bes-. c-. | }
    { bes4\repeatTie f8( g4 a8) | bes4 bes16 bes bes4 r8 | }
  }
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
    c8) d-. e-. f-. g-. a-. | bes8-. a-. g-. f-. e-. d-. | \acciaccatura d8( c8)( b c) a'4->( g8) |
  }
  \alternative {
    { f8 c-.\ff c-. c-. c-. c-. | }
    { f4 f16 f f4 r8 | }
  }
  %TRIO
  \key bes \major
  f8\ff e ees d c bes | a8[ r f] d'4->( c8) | bes8 r f\p( g4 a8)
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
    { bes4) f'16-. f-. f4-. f16-. f-. | f8-. f,-. g-. a-. bes-. c-. | }
    { bes4\repeatTie f8( g4 a8) | bes4 bes16 bes bes4 r8 | }
  }
}

cornetOne = \relative c'' {
  \key f \major
  
  a8[\ff r a] d4.->( | c8) a-. bes-. b-. c-. cis-. | d8 r r e4.->\trill( | f4) r8 r4 r8 |
  %mark A
  \repeat volta 2 {
    a,8[\f r a] gis a bes | a[ r bes-.] b-. c-. cis-. | d8-. r r e,4.->~ | e8[ r e] e f fis |
    g8[ r g] fis g a | g8[ r gis] a bes b | c8 r r c,4.->~ | c8 d e f g gis |
    a8[ r a] gis a bes | a8[ r bes] b c d | e8 r r e,4.->~ | e8[ r e]\ff e f fis |
    g4->( fis16 g) c4->( b16 c) | <e c>8-. <f d>-. <fis dis>-. <g e>4->( fis16 g) | 
    <a f>4( <g e>8) <f d>-. <e c>-. <d bes>-. |
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
    c8) b-. bes-. a-. g-. f-. | e8-. f-. g-. a-. bes-. b-. | \acciaccatura d8( c8)( b c) c4->( bes8) |
  }
  \alternative {
    { a8 c-.\ff c-. c-. c-. c-. | }
    { a4 f'16 f f4 r8 | }
  }
  %TRIO
  \key bes \major
  f8\ff e ees d c bes | a8[ r f] d'4->( c8) | bes8 r f\p( g4 a8)
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
    bes,4.-> a-> | g4.-> f-> | ees4.-> d-> | c2.-> |
    a'4.-> g-> | f4.-> g4 a8 | bes4.-> c-> | d8-. f-. e-. ees-. d-. c-. |
    bes4.-> a-> | g4.-> f-> | ees4.-> d-> | c2.-> |
    f4.-> fis-> | g4.-> a->( |
  }
  \alternative {
    { bes4) f'16-. f-. f4-. f16-. f-. | f8-. f-. e-. ees-. d-. c-. | }
    { bes4\repeatTie f8( g4 a8) | bes4 bes16 bes bes4 r8 | }
  }
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
  \key ees \major
  bes8[ r bes] c4.->( | bes8) r r r4 r8 | r4 r8 bes4.->~ | bes4 r8 g8->\f^\markup {\italic Solo} aes-> a-> 
  %mark A
  \repeat volta 2 {
    bes2.->~ | \cPIII { bes bes bes bes | bes bes bes bes | bes bes s } f8-> fis-> g-> |
    a2.->~ | \cPIII { a a a a | g bes bes bes | bes bes s } g8-> aes-> a-> |
    bes2.->~ | \cPIII { bes bes bes bes | b b b b | b b b b | s } 
    d2.~\ff | d2.( | ees2.)( | 
  }
  \alternative {
    { d4) r8 g,->\f aes-> a-> | }
    { d8\repeatTie bes-.\ff bes-. bes-. bes-. bes-. | }
  }
  %mark B
  \repeat volta 2 {
    r4 ees8-. d4-. c8-. | bes2.->~ | bes4 ees8-. bes4-. c8-. | d2.->~ |
    d4 d8-. c4-. ces8-. | bes2.-> | bes4.-> b-> | c4.-> d-> |
    r4 ees8-. d4-. c8-. | bes2.->~ | bes4 ees8-. d4-. des8-. | c8-. r r c4.->\ff( |
    bes8) a-. aes-. g-. f-. ees-. | d8-. ees-. f-. g-. aes-. a-. | bes8 r r d4.->( |
  }
  \alternative {
    { ees8) bes-.\ff bes-. bes-. bes-. bes-. | }
    { ees4\repeatTie bes16 bes bes4 r8 | }
  }
  
  %mark TRIO
  \key aes \major
  
  ees,8-.\ff f-. g-. aes-. bes-. c-. | des8-. r r des4.->( | c4) r8 r4 r8 |
  %mark C
  \repeat volta 2 {
    \cPIII { c\p c c c | c c c c | d d d d | d d d d | s }
    des2.~\cresc | des2.( | c2.) | des2.->\ff\> |
    \cPIII { c\p c c c | c c c c | c c c c | c\< c c c | s }
    ees2.(\ff | d2.)( | ees8[) r a,]( bes[) r g-.] |
  }
  \alternative {
    { ees4-. r8 r4 r8 | }
    { ees8-. ees-.\ff ees-. ees-. ees-. ees-. | }
  }
  %mark D
  \repeat volta 2 {
    aes4.-> g-> | f4.-> ees-> | des4.-> c-> | bes2.-> |
    g'4.-> f-> | ees4.-> f4 g8 | aes4.-> bes-> | c8 ees-. d-. des-. c-. bes-. |
    aes4.-> g-> | f4.-> ees-> | des4.-> c-> | bes2.-> |
    ees4.-> e-> | f4.-> g-> |
  }
  \alternative {
    { aes4-. r8 r4 r8 | r8 ees'-. d-. des-. c-. bes-. | }
    { aes4-. r8 r4 r8 | c4-. c16-. c-. c4-. r8 | }
  }
}

tromboneTwo = \relative c' {
  \key ees \major
  
  g8[ r g] fis4.->( | g8) r r r4 r8 | r4 r8 f!4.->( | g4) r8 g8->\f aes-> a-> 
  %mark A
  \repeat volta 2 {
    bes2.->~ | \cPIII { bes g g g | aes aes aes aes | aes aes s } f8-> fis-> g-> |
    a2.->~ | \cPIII { a f f f | g g g g | g g s } g8-> aes-> a-> |
    bes2.->~ | \cPIII { bes g g g | g g g g | g g g g | s } 
    bes2.~\ff | bes2.( | a2.)( | 
  }
  \alternative {
    { bes4) r8 g->\f aes-> a-> | }
    { bes8\repeatTie bes-.\ff bes-. bes-. bes-. bes-. | }
  }
  %mark B
  \repeat volta 2 {
    r4 ees8-. d4-. c8-. | bes2.->~ | bes4 ees8-. bes4-. c8-. | d2.->~ |
    d4 d8-. c4-. ces8-. | bes2.-> | bes4.-> b-> | c4.-> d-> |
    r4 ees8-. d4-. c8-. | bes2.->~ | bes4 ees8-. d4-. des8-. | c8-. r r fis,4.->\ff( |
    g8) a-. aes-. g-. f-. ees-. | d8-. ees-. f-. g-. aes-. a-. | bes8 r r aes!4.->( |
  }
  \alternative {
    { g8) bes-.\ff bes-. bes-. bes-. bes-. | }
    { g4\repeatTie g16 g g4 r8 | }
  }
  
  %mark TRIO
  \key aes \major
  
  ees8-.\ff f-. g-. aes-. bes-. c-. | des8-. r r g,4.->( | aes4) r8 r4 r8 |
  %mark C
  \repeat volta 2 {
    \cPIII { aes\p aes aes aes | aes aes aes aes | g g g g | g g g g | s }
    g2.~\cresc | g2.( | aes2.) | g2.->\ff\> |
    \cPIII { aes\p aes aes aes | aes aes aes aes | bes bes bes bes | bes\< bes bes bes | s }
    g2.(\ff | f2.)( | g8[) r a]( bes[) r g-.] |
  }
  \alternative {
    { ees4-. r8 r4 r8 | }
    { ees8-. ees-.\ff ees-. ees-. ees-. ees-. | }
  }
  %mark D
  \repeat volta 2 {
    aes4.-> g-> | f4.-> ees-> | des4.-> c-> | bes2.-> |
    g'4.-> f-> | ees4.-> f4 g8 | aes4.-> bes-> | c8 ees-. d-. des-. c-. bes-. |
    aes4.-> g-> | f4.-> ees-> | des4.-> c-> | bes2.-> |
    ees4.-> e-> | f4.-> g-> |
  }
  \alternative {
    { aes4-. r8 r4 r8 | r8 ees'-. d-. des-. c-. bes-. | }
    { aes4-. r8 r4 r8 | aes4-. aes16-. aes-. aes4-. r8 | }
  }

}

tromboneThree = \relative c {
  \key ees \major
  
  ees8[\ff r ees] a,4.->( | bes8) r r r4 r8 | r4. bes4.->( | ees4) r8 r4 r 8
         
  %mark A
  \repeat volta 2 {
  \cPI { ees\f bes | ees bes | f' bes, | f' bes, |
         f' bes, | f' bes, | ees bes | ees bes |
         ees bes | ees bes | g b | d g | s }
  f2.~ | f2.~ | f2. | 
  }
  \alternative {
    {bes,4 r8 r4 r8 | }
    {bes4 r8 r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    r4 ees'8-.\ff d4-. c8-. | bes2.->~ | bes4 ees8-. bes4-. c8-. | d2.->~ |
    d4 d8-. c4-. ces8-. | bes2.-> | bes4.-> b-> | c4.-> d-> |
    r4 ees8-. d4-. c8-. | bes2.->~ | bes4 ees8-. d4-. des8-. | c8-. r r a4.->\ff( |
    bes8) a-. aes-. g-. f-. ees-. | d8-. ees-. f-. g-. aes-. a-. | bes8 r r bes,4.->( |
  }
  \alternative {
    { ees4) r8 r4 r8  | }
    { ees4\repeatTie ees16 ees ees4 r8 | }
  }
  
  %mark TRIO
  \key aes \major 
  ees8-.\ff f-. g-. aes-. bes-. c-. | des8-. r r ees,4.->( | aes,4) r8 r4 r8 |
  %mark C
  \repeat volta 2 {
    R2.*4 |
    \cPI { ees'-.\p\cresc bes'-. | g-. ees-. | aes,-. c-. | s } ees2.->\ff\> |
    R2.*4\! | 
    ees2.\ff( | bes2.)( | ees8[) r a]( bes[) r g-.] | 
  }
  \alternative {
    {ees4 r8 r4 r8 | }
    {ees4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    aes4.->\ff g-> | f4.-> ees-> | des4.-> c-> | bes2.-> |
    g'4.-> f-> | ees4.-> f4 g8 | aes4.-> bes-> | c8 ees-. d-. des-. c-. bes-. |
    aes4.-> g-> | f4.-> ees-> | des4.-> c-> | bes2.-> |
    ees4.-> e-> | f4.-> g-> |
  }
  \alternative {
    { aes4-. r8 r4 r8 | r8 ees'-. d-. des-. c-. bes-. | }
    { aes4-. r8 r4 r8 | aes,4-. aes16-. aes-. aes4-. r8 | }
  }
}

baritoneTC = \relative c'' {
  \key f \major
  
  c8[\ff r c] f4.->( | c8) a-. bes-. b-. c-. cis-. | d8 r r e4.->( | f4) r8 a,8->\f bes-> b-> |
  %mark A
  \repeat volta 2 {
    c2.->~ | c8[ r c] a[ r a] | g8[ r g] fis g a | g8[ r g] g-> gis-> a-> |
    bes2.->~ | bes8[ r bes] g[ r g] | a8[ r a] gis a bes | a8[ r a] a-> bes-> b-> |
    c2.->~ | c8[ r c] a[ r a] | g8[ r g] fis g a | g8[ r e] e f fis |
    g4.->\ff c-> | e8 f fis g4. | a4( g8) f e d
  }
  \alternative {
    {c4 r8 a->\f bes-> b-> | }
    {c8 c\ff c c c c | }
  }
  %mark B
  \repeat volta 2 {
    r4 f8 e4 d8 | c2.~ | c4 f8 c4 d8 | e2.~ |
    e4 e8 d4 des8 | c2. | c4.-> cis-. | d4.-> e-> | 
    r4 f8 e4 d8 | c2.~ | c4 f8 e4 ees8 | d8 r r f4.->( |
    c8) b bes a g f | e8 f g a bes b | \acciaccatura d8( c)( b c) c4.~
  }
  \alternative {
    {c8 c\ff c c c c | }
    {c4\repeatTie f16 f f4 r8 | }
  }
  
  %mark TRIO
  \key bes \major
  f,8-.\ff g-. a-. bes-. c-. d-. | ees8 r r c4.( | d4) r8 r4 r8 |
  %mark C
  \repeat volta 2 {
    r4 d8\p^\markup {\italic "Solo"} bes4 d8 | f,2. | r8 ees'8 c4 ees | a,2. |
    \cPII { f\cresc( ees') fis,( ees') | g,( ees') a,( ees') | s}
    d8 bes g f4.->~\ff | f4 f8\p( g4 a8) |
    r4 d8 bes4 d8 | f,2. | r4 d'8 a4 d8 | fis,2.\< |
    c'2.~\ff | c8 d-. c-. bes-. a-. g-. | f8[ r b]( c[) r a] |
  }
  \alternative {
    {f4 r8 r4 r8 | }
    {f8 f\ff f f f f | }
  }
  %mark D
  \repeat volta 2 {
    d'4.-> d-> | d4.-> d-> | d4( c8) g'4.->~ | g4 g,8 a4 bes8 |
    c4.-> c-> | c4.-> c-> | c4( bes8)  f'4.->~ | f8 f, g a bes c |
    d4.-> d-> | d4.-> d-> | d4( c8) g'4.->~ | g4 g,8 a4 bes8 | 
    c4.( \cPIII { ees) ees( | d) d( c) c( | s }
  }
  \alternative {
    { bes4) r8 r4 r8 | r8 f\ff g a bes c | }
    { bes4\repeatTie f'8^\markup { \italic Solo }( e4 ees8) | d4 bes16 bes bes4 r8 | }
  } 
}
		    
basses = \relative c {
  \key ees \major
  
  ees8[\ff r ees] a,4.->( | bes8) r r r4 r8 | r4 r8 <bes, bes'>4.->( | ees4) r8 r4 r8 |
  %mark A
  \repeat volta 2 {
    \cPI { ees\f bes' | ees, bes' | f bes | f bes |
      f bes | f bes| ees, bes' | ees, bes' |
      ees, bes' | ees, bes' | d, g | d g |
      bes\ff bes | bes bes | f f | s }
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
    bes8) r r r4 r8 | R2. | r4 r8 <bes, bes'>4.->( |
  }
  \alternative {
    { ees4) r8 r4 r8 | }
    { ees4-. ees16-. ees-. ees4-. r8 | }
  }
  
  %mark TRIO
  \key aes \major
  ees8\ff f g aes bes c | des8 r r ees,4.->( | aes4) r8 r4 r8 |
  %mark C
  \repeat volta 2 {
    \cPI { aes\p ees | aes ees | bes' ees, | bes' ees, | 
           g\cresc ees | bes' ees, | aes <c, c'> | s } <ees ees'>2.->\ff\>
    \cPI { aes\p ees | aes ees | g <c, c'> | g' <c, c'> |
           <bes bes'>\ff <bes bes'> | <bes bes'> <bes bes'> | s }
    ees8[ r a]( bes[) r g-.] 
  }
  \alternative {
    { ees4-. r8 r4 r8 | }
    { ees4-. r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    \cPI { aes\ff ees | aes aes | des, f | bes-. des-. |
           ees, bes' | g ees | c' bes | s } aes4 r8 r4 r8 |
    \cPI { aes ees | aes aes | des, f | bes des | 
           ees, bes' | g ees | s } 
  }
  \alternative {
    { aes4 r8 r4 r8 | R2. | }
    { aes4 r8 r4 r8 | aes4 aes16 aes aes4 r8 | }
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

