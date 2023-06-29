\version "2.24.1"
\include "changePitch.ly"

\pointAndClickOff

\header {
  title = "The Maine Festival March"
  composer = "R. B. Hall"
  arranger = \markup { \smaller "edited by G. Fitzgerald" }
  copyright = "Public domain. Version 2023-06-28"
  tagline = ##f
}

rehearsalMarks = \relative c' {
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
  \set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 4)

  \time 2/2

  s1*4
  \mark \markup { \circle "A" }
  \repeat volta 2 {
    s1*15 |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  \mark \markup { \circle "B" }
  \repeat volta 2 {
    s1*15 |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  
  \bar "||"
  
  \mark \markup { \circle "C" }
  s1*16
  \bar "||" \break
  \mark \markup { \bold "TRIO" }
  \repeat volta 2 {
    s1*15 |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  \mark \markup { \circle "D" }
  \repeat volta 2 {
    s1*12 | 
    \bar "||"
    \mark \markup { \circle "E" }
    s1*15
  }
  \alternative {
    { s1 | }
    { s1 \bar "|." }
  }
}

% Define patterns for changePitch/cPI/cPII/cPIII/cPIV
patI = { r4 c4 }
patII = { c4 c8 }
patIII = { c8[ r8 c8] }
patIV = { r8 \samePitch { c c } }

piccOne = \relative c''' {

}

oboeOne = \relative c'' {

}

oboeTwo = \relative c'' {

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

cornetSolo = \relative c''' {
  \key f \major
  
  a4.\f( bes16 a) g4.( a16 g) | f4 r8 e,8-. f-. g-. a-. bes-. |
  c4-. r c2->~ | c4 c,\p( f g) |
  %mark A
  \repeat volta 2 {
    a4.(\< gis8) a4.( gis8) | a4.(\> g8) f-. g-. a-. bes-. | 
    c4-.\! c-. c-. c-. | c4-. r \acciaccatura d8 c( b c d) |
    e4-. e-. d-. d-. | bes2 \acciaccatura d8 c( b c d) |
    e4-. e-. d-. d-. | a4 r8 c,( d e f g) |
    a4.(\< gis8) a4.( gis8) | a4.(\> g8) f-. g-. a-. bes-. |
    c4-.\! c-. c-. c-. | c4 r \acciaccatura d8 c( b c d ) |
    e4-. r8 c->\f b4-> a-> | g4-. r r2 | 
    r2 b->( | 
  }
  \alternative {
    { c4) c,(\p f g) | }
    { c4\repeatTie c-.\ff c-. c-. | }
  }
  %mark B
  \key aes \major
  
  \repeat volta 2 {
    c4-. c-. c2->~ | c4 c des d | ees4 g, aes a | bes2->( ees,) |
    c'4-. c-. c2->~ | c4 c des d | ees4 g, aes a | bes2->( ees,) |
    c'1~ | c4 des-. c-. bes-. | aes1~ | aes4 aes-. aes-. aes-. |
    aes'8( g f e f e f g) | aes2.->(\fff g8 f) | c'4 r c-> r | 
  }
  \alternative {
    { r4 c,-.\ff c-. c-. | }
    { r4 c,(\p f g) | }
  }
  %mark C
  \key f \major
  
  a4.(\< gis8) a4.( gis8) | a4.(\> g8) f-. g-. a-. bes-. | 
  c4-.\! c-. c-. c-. | c4-. r \acciaccatura d8 c( b c d) |
  e4-. e-. d-. d-. | bes2 \acciaccatura d8 c( b c d) |
  e4-. e-. d-. d-. | a4 r8 c,( d e f g) |
  a4.(\< gis8) a4.( gis8) | a4.(\> g8) f-. g-. a-. bes-. |
  c4-.\! c-. c-. c-. | c4 r \acciaccatura d8 c( b c d ) |
  e4-. r8 d->\f c4-> b-> | bes4-> a-> g-> gis-> |
  a4-> r g2->( | f4) r r2
  
  \bar "||" \break
  %TRIO
  \key bes \major
  
  \repeat volta 2 {
    r4 f-.\p\< g-. a-. | bes4-. c-. d-. ees-. | f2->\f f2-> | f2->~ f8 ees-. d-. c-. |
    bes4-. d-. c-. bes-. | f4 r r2 | g2( d'4. c8) | c4 r r2 |
    r4 f,-.\p\< g-. a-. | bes4-. c-. d-. ees-. | 
    f4-.\f r f4.->( fis8 | g4 ) r bes,4.->\ff(  c8 |
    d4) r r2 | R1 | r2 a2->( |
  }
  \alternative {
    { bes4) r r2 | }
    { bes4\repeatTie r r2 | }
  }
  %mark D
  \repeat volta 2 {
    R1*2 | d8-.\ff cis-. d-. ees-. d4-. c-. | bes4-. a-. g-. r |
    R1*2 | c8-. b-. c-. d-. c4-. bes-. | a4-. g-. f-. r |
    f'2.-> e4 | ees2. d4 | c4 bes a g | f4 r r2 |
    %mark E
    r4 f-.\fff g-. a-. | bes4-. c-. d-. ees-. | f2-> f2-> | f2->~ f8 ees-. d-. c-. |
    bes4-. d-. c-. bes-. | f4 r r2 | g2( d'4. c8) | c4 r r2 |
    r4 f,-. g-. a-. | bes4-. c-. d-. ees-. | 
    f4-. r f4.->( fis8 | g4 ) r bes,4.->(  c8 |
    d4) r r2 | R1 | r2 a2->( |
  }
  \alternative {
    { bes4) r r2 | }
    { bes4\repeatTie r bes r }
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
  \key ees \major
  
  bes2( b | c4) r r2 | r2 des2->( | d!4) r r2 |
  %mark A
  \repeat volta 2 {
    r4\p\< bes r b | r4\> c r ces | g4-.\! aes-. g-. f-. | ees4-. bes' r bes |
    r4 bes r bes | r4 d-. d2-> | r4 bes r bes | bes4 r r2 |
    r4\p\< bes r b | r4\> c r ces | g4-.\! aes-. g-. f-. | ees4-. bes' r bes |
    bes4 r r2 | r4 r8 d->\ff c4-> bes-> | f4-. r ees'2->( |
  }
  \alternative {
    { d4) r r2 | }
    { d4\repeatTie r r2 | }
  }
  %mark B
  \key ges \major
  \repeat volta 2 {
    r4 bes-.\ff bes2->~ | bes4 bes-. aes-. ges-. | f4-. aes-. a-. bes-. | ces1-> |
    r4 bes-. bes2->~ | bes4 bes-. aes-. ges-. | f4-. aes-. a-. bes-. | ces1-> |
    \cPI { bes\p bes | bes bes | bes bes | bes bes | s }
    ces4 r r2 | ees1->\fff( | d4) r d r |
  }
  \alternative {
    { R1 | }
    { R1 | }
  }
  %mark C
  \key ees \major
  
  r4\p\< bes r b | r4\> c r ces | g4-.\! aes-. g-. f-. | ees4-. bes' r bes |
  r4 bes r bes | r4 d-. d2-> | r4 bes r bes | bes4 r r2 |
  r4\p\< bes r b | r4\> c r ces | g4-.\! aes-. g-. f-. | ees4-. bes' r bes |
  bes4 r r2 | f4->\f g-> aes-> c-> | bes4-. r d2->( | ees4) ees,-. f-. g-. |
  %TRIO
  \key aes \major
  \repeat volta 2 {
    s1*15 |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  %mark D
  \repeat volta 2 {
    s1*12 | 
    %mark E
    s1*15
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
}

tromboneTwo = \relative c' {

}

tromboneThree = \relative c {

}

baritoneTC = \relative c'' {

}

basses = \relative c {

}

drumSnareBass = \drummode {
  \clef percussion


}

percTimp = \relative c {

}

percBells = \relative c' {

}

dummyPart = \relative c'' {
  s1*4 |
  %mark A
  \repeat volta 2 {
    s1*15 |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  %mark B
  \repeat volta 2 {
    s1*15 |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  %mark C
  s1*16 |
  %TRIO
  \repeat volta 2 {
    s1*15 |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  %mark D
  \repeat volta 2 {
    s1*12 | 
    %mark E
    s1*15 |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
}

