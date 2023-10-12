\version "2.24.1"
\include "changePitch.ly"

\pointAndClickOff

\header {
  title = "The Maine Festival March"
  composer = "R. B. Hall"
  arranger = \markup { \smaller "edited by G. Fitzgerald" }
  copyright = "Public domain. Version 2023-10-11"
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

piccOne = \relative c'' {
  \key d \major
  
  fis4.\ff( g16 fis) e4.( fis16 e) | d4 r8 cis-. d-. e-. fis-. g-. | 
  a4-. r a2->~ | a4 a,\p( d e) |
  
  %mark A
  \repeat volta 2 {
    fis4.\<( eis8) fis4.( eis8) | fis4.\>( e!8) d-. e-. fis-. g-. |
    a4-.\! a-. a-. a-. | a4-. r \acciaccatura b8 a( gis a b) | 
    cis4-. cis-. b-. b-. | g2 \acciaccatura b8 a( gis a b) |
    cis4-. cis-. b-. b-. | fis4 r8 a,\p( b cis d e) |
    fis4.\<( eis8) fis4.( eis8) | fis4.\>( e!8) d-. e-. fis-. g-. |
    a4-.\! a-. a-. a-. | a4-. r \acciaccatura b8 a( gis a b) | 
    cis4 r8 a->\f gis4-> fis-> | e4-. r r2 |
    r2 gis->(
  }
  \alternative {
    { a4) a,\p( d e) | }
    { a4\repeatTie a-.\ff a-. a-.| }
  }
  
  %mark B
  \key f \major
  
  \repeat volta 2 {
    a4-. a-. a2->~ | a4 a-. bes-. b-. | c4-. e,-. f-. fis-. | g2( c,) |
    a'4-. a-. a2->~ | a4 a-. bes-. b-. | c4-. e,-. f-. fis-. | g2( c,) |
    a'1~\p | a4 bes-. a-. g-. | f1~ | f4 f-. f-. f-. |
    f8\<( e d cis d cis d e) | f2.->\fff( e8 d) | a'4 r a-> r |
  }
  \alternative {
    { r4 a-.\ff a-. a-. | }
    { r4 a,\p( d e) | }
  }
  
  %mark C
  \key d \major
  
  fis4.\<( eis8) fis4.( eis8) | fis4.\>( e!8) d-. e-. fis-. g-. |
  a4-.\! a-. a-. a-. | a4-. r \acciaccatura b8 a( gis a b) | 
  cis4-. cis-. b-. b-. | g2 \acciaccatura b8 a( gis a b) |
  cis4-. cis-. b-. b-. | fis4 r8 a,\p( b cis d e) |
  fis4.\<( eis8) fis4.( eis8) | fis4.\>( e!8) d-. e-. fis-. g-. |
  a4-.\! a-. a-. a-. | a4-. r \acciaccatura b8 a( gis a b) | 
  cis4 r8 b->\f a4-> gis-> | g!-> fis-> e-> eis-> | fis4-> r e2->( | d4) r r2 |
  
  %TRIO
  \key g \major
  
  \repeat volta 2 {
    r4 d-.\p\< e-. fis-. | g4-. a-. b-. c-. | d2->\f d-> | d2~ d8 c b a |
    g4-. b-. a-. g-. | d4-. r r2 | e2( b'4. a8) | a4 r r2 | 
    r4 d,-.\p\< e-. fis-. | g4-. a-. b-. c-. | d4-.\f r d4.->( dis8) | e4 r g,4.->\ff( a8) |
    b4 r r2 | R1 | r2 fis2->( | 
  }
  \alternative {
    { g4) r r2 | }
    { g4\repeatTie r r2 | }
  }
  %mark D
  \repeat volta 2 {
    R1*2 | b8-.\ff ais-. b-. c-. b4-. a-. | g4-. fis-. e-. r |
    R1*2 | a8-. gis-. a-. b-. a4-. g-. | fis4-. e-. d-. r |
    d'2.-> cis4 | c2. b4 | a4-. g-. fis-. e-. | d4 r r2 |
    
    %mark E
    r4 d-.\fff e-. fis-. | g4-. a-. b-. c-. | d2-> d-> | d2~ d8 c-. b-. a-. |
    g4-. b-. a-. g-. | d4-. r r2 | e2( b'4. a8) | a4 r r2 | 
    r4 d,-. e-. fis-. | g4-. a-. b-. c-. | d4-. r d4.->( dis8 | e4) r g,4.->( a8 |
    b4) r r2 | R1 | r2 fis2->( |
  }
  \alternative {
    { g4) r r2 | }
    { g4\repeatTie r g r | }
  }
}

oboeOne = \relative c'' {

}

oboeTwo = \relative c'' {

}

bassoonOne = \relative c {

}

% clarinetInEb - dup of flute

clarinetOne = \relative c''' {
  \key f \major
  
  a4.\ff( bes16 a) g4.( a16 g) | f4-. r8 e-. f-. g-. a-. bes-. |
  c4-. r c2->~ | c4 c,\p( f g)
  
  %mark A
  \repeat volta 2 {
    a4.\<( gis8) a4.( gis8) | a4.\>( g!8) f-. g-. a-. bes-. |
    c4-.\! c-. c-. c-. | c4-. r \acciaccatura d8 c( b c d) |
    e4-. e-. d-. d-. | bes2 \acciaccatura d8 c( b c d) |
    e4-. e-. d-. d-. | a4 r8 c,\p( d e f g) |
    a4.\<( gis8) a4.( gis8) | a4.\>( g!8) f-. g-. a-. bes-. |
    c4-.\! c-. c-. c-. | c4-. r \acciaccatura d8 c( b c d) |
    e4 r8 c8->\f b4-> a-> | g4 r r2 |
    r2 b->( |
  }
  \alternative {
    { c4) c,\p( f g) | }
    { c4\repeatTie c-.\ff c-. c-. | }
  }
  
  %mark B
  \key aes \major
  \repeat volta 2 {
    c4-. c-. c2->~ | c4 c-. des-. d-. | ees4-. g,-. aes-. a-. | bes2->( ees,) |
    c'4-. c-. c2->~ | c4 c-. des-. d-. | ees4-. g,-. aes-. a-. | bes2->( ees,) |
    c'1\p~ | c4 des-. c-. bes-. | aes1~ | aes4 aes-. aes-. aes-. |
    aes8\<( g f e f e f g ) | aes2.->\fff( g8 f) | c'4 r c-> r |
  }
  \alternative {
    { r4 c-.\ff c-. c-. | }
    { r4 c,\p( f g) | }
  }
  
  %mark C
  \key f \major
  a4.\<( gis8) a4.( gis8) | a4.\>( g!8) f-. g-. a-. bes-. |
  c4-.\! c-. c-. c-. | c4-. r \acciaccatura d8 c( b c d) |
  e4-. e-. d-. d-. | bes2 \acciaccatura d8 c( b c d) |
  e4-. e-. d-. d-. | a4 r8 c,\p( d e f g) |
  a4.\<( gis8) a4.( gis8) | a4.\>( g!8) f-. g-. a-. bes-. |
  c4-.\! c-. c-. c-. | c4 r \acciaccatura d8 c( b c d) |
  e4 r8 d->\f c4-> b-> | bes!4-> a-> g-> gis-> | a4-> r g2->( | f4) r r2

  %TRIO
  \key bes \major
  \repeat volta 2 {
    r4 f-.\p\< g-. a-. | bes4-. c-. d-. ees-. | f2->\f f-> | f2->~ f8 ees d c |
    bes4-. d-. c-. bes-. | f4-. r r2 | g2( d'4. c8) | c4 r r2 | 
    r4 f,-.\p\< g-. a-. | bes4-. c-. d-. ees-. | 
    f4-.\f r f4.->( fis8 | g4) r bes,4.->\ff( c8 |
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
    f2.-> e4 | ees!2.-> d4 | c4 bes'-. a-. g-. | f4-. r r2 |
    
    %mark E
    r4 f-.\fff g-. a-. | bes4-. c-. d-. ees-. | f2-> f-> | f2->~ f8 ees-. d-. c-. |
    bes4-. d-. c-. bes-. | f4-. r r2 | g2( d'4. c8) | c4 r r2 | 
    r4 f,-. g-. a-. | bes4-. c-. d-. ees-. | 
    f4-. r f4.->( fis8 | g4) r bes,4.->( c8 |
    d4) r r2 | R1 | r2 a2->( |
  }
  \alternative {
    { bes4) r r2 | }
    { bes4\repeatTie r bes r | }
  }
}

clarinetTwo = \relative c'' {
  \key f \major
  
  c2\ff( cis | d4) r8 e-. f-. g-. a-. bes-. | c4 r dis,2->( | e4) r r2 |
  
  %mark A
  \repeat volta 2 {
    c,2\p\<( cis | d2\> des\!) | c4 c'-. c-. c-. | c4-. r r2 |
    bes'4-. bes-. bes-. bes-. | e,2 r | bes'4-. bes-. bes-. bes-. | f4 r r2 |
    c,2\p\<( cis | d2\> des\!) | c4 c'-. c-. c-. | c4-. r \acciaccatura d8 c( b c d) |
    e4-. r8 c->\f b4-> a-> | g4 r r2 | r2 f'2->( |
    
  }
  \alternative {
    { e4) r r2 | }
    { e4\repeatTie c-.\ff c-. c-. | }
  }
  %mark B
  \key aes \major
  \repeat volta 2 {
    aes'!4-. g-. f2->~ | f4 aes-. g-. f-. | ees!4-. ees-. ees-. ees-. | ees1-> |
    aes4-. g-. f2->~ | f4 aes-. g-. f-. | ees4-. ees-. ees-. ees-. | ees1-> |
    r4 e,\p( f fis) | g1 | r4 c,( d e) | f1~ |
    f4 r r2 | b1->(\fff | c4) r c r |
  }
  \alternative {
    { r4 c-.\ff c-. c-. | }
    { R1 | }
  }
  %mark C
  \key f \major
  
  c,2\p\<( cis | d2\> des\!) | c4 c'-. c-. c-. | c4-. r r2 |
  bes'4-. bes-. bes-. bes-. | e,2 r | bes'4-. bes-. bes-. bes-. | f4 r r2 |
  c,2\p\<( cis | d2\> des\!) | c4 c'-. c-. c-. | c4-. r \acciaccatura d8 c( b c d) |
  e4-. r8 d->\f c4-> b-> | bes!4-> a-> g-> d'-> | c4-> r e2->( | f4) r r2 |
  %TRIO
  \key bes \major
  \repeat volta 2 {
    r4 f,-.\p\< g-. a-. | bes4-. c-. d-. ees-. | c2->\f b-> | c2->~ c8 r r4 |
    bes4-. d-. c-. bes-. | f4 r r2 | e'1( | ees4) r r2 |
    r4 f,-.\p\< g-. a-. | bes4-. c-. d-. ees-. | d4\f r d2->( | ees4) r e2->\ff( |
    f4) r r2 | R1 | r2 ees2->( | 
  }
  \alternative {
    { d4) r r2 | }
    { d4\repeatTie r r2 | }
  }
  %mark D
  \repeat volta 2 {
    R1*2 | d8-.\ff cis-. d-. ees-. d4-. c-. | bes4-. a-. g-. r |
    R1*2 | c8-. b-. c-. d-. c4-. bes-. | a4-. g-. f-. r |
    f'2.-> e4-. | ees2.-> d4-. | c-. bes-. a-. g-. | f4-. r r2 |
    
    %mark E
    r4 f'4-.\fff g-. a-. | bes4-. c-. d-. ees-. | a,2-> gis-> | a2->~ a8 ees-. d-. c-. |
    bes4-. d-. c-. bes-. | f4 r r2 | e'1( | ees4) r r2 |
    r4 f-. g-. a-. | bes-. c-. d-. ees-. | d4-. r f,4.->( fis8 | g4) r e2->( | 
    f4) r r2 | R1 | r2  ees2->( |
  }
  \alternative {
    { d4) r r2| }
    { d4\repeatTie r d r | }
  }

}

clarinetThree = \relative c'' {
  \key f \major
  
  a2\ff( g | f4) r8 e'-. f-. g-. a-. bes-. | c4 r c,2->~ | c4 r r2 |
  
  %mark A
  \repeat volta 2 {
    c,2\p\<( cis | d2\> des\!) | c4 c'-. c-. c-. | c4-. r r2 |
    e4-. e-. d-. d-. | bes2 r | e4-. e-. d-. d-. | a4 r r2 |
    c,2\p\<( cis | d2\> des\!) | c4 c'-. c-. c-. | c4-. r \acciaccatura d8 c( b c d) |
    e4-. r8 c->\f b4-> a-> | g4 r r2 | r2 d'2->( |
    
  }
  \alternative {
    { c4) r r2 | }
    { c4\repeatTie c-.\ff c-. c-. | }
  }
  %mark B
  \key aes \major
  \repeat volta 2 {
    c!4-. c-. c2->~ | c4 c-. des-. d-. | ees!4-. ees-. ees-. ees-. | ees1-> |
    c4-. c-. c2->~ | c4 c-. des-. d-. | ees4-. ees-. ees-. ees-. | ees1-> |
    r4 e,\p( f fis) | g1 | r4 c,( d e) | f1~ |
    f4 r r2 | f1->(\fff | e4) r e r |
  }
  \alternative {
    { r4 c'-.\ff c-. c-. | }
    { R1 | }
  }
  %mark C
  \key f \major
  
  c,2\p\<( cis | d2\> des\!) | c4 c'-. c-. c-. | c4-. r r2 |
  e4-. e-. d-. d-. | bes2 r | e4-. e-. d-. d-. | a4 r r2 |
  c,2\p\<( cis | d2\> des\!) | c4 c'-. c-. c-. | c4-. r \acciaccatura d8 c( b c d) |
  e4-. r8 d->\f c4-> b-> | bes!4-> a-> g-> f-> | f4-> r bes2->( | a4) r r2 |
  %TRIO
  \key bes \major
  \repeat volta 2 {
    r4 f-.\p\< g-. a-. | bes4-. c-. d-. ees-. | a,2->\f gis-> | a2->~ a8 r r4 |
    bes4-. d-. c-. bes-. | f4 r r2 | bes1( | a4) r r2 |
    r4 f-.\p\< g-. a-. | bes4-. c-. d-. ees-. | bes4\f r bes2->~ | bes4 r bes2->\ff~ |
    bes4 r r2 | R1 | r2 c2->( | 
  }
  \alternative {
    { bes4) r r2 | }
    { bes4\repeatTie r r2 | }
  }
  %mark D
  \repeat volta 2 {
    R1*2 | d8-.\ff cis-. d-. ees-. d4-. c-. | bes4-. a-. g-. r |
    R1*2 | c8-. b-. c-. d-. c4-. bes-. | a4-. g-. f-. r |
    f'2.-> e4-. | ees2.-> d4-. | c-. bes-. a-. g-. | f4-. r r2 |
    
    %mark E
    r4 f'4-.\fff g-. a-. | bes4-. c-. d-. ees-. | f,2-> f-> | f2->~ f8 ees-. d-. c-. |
    bes4-. d-. c-. bes-. | f4 r r2 | bes1( | a4) r r2 |
    r4 f'-. g-. a-. | bes-. c-. d-. ees-. | d4-. r d,2->( | ees4) r cis2->( | 
    d4) r r2 | R1 | r2  c2->( |
  }
  \alternative {
    { bes4) r r2| }
    { bes4\repeatTie r bes r | }
  }

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
    e4-. e-. d-. d-. | a4 r8 c,\p( d e f g) |
    a4.(\< gis8) a4.( gis8) | a4.(\> g8) f-. g-. a-. bes-. |
    c4-.\! c-. c-. c-. | c4-. r \acciaccatura d8 c( b c d ) |
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
    c'1~\p | c4 des-. c-. bes-. | aes1~ | aes4 aes-. aes-. aes-. |
    aes'8\<( g f e f e f g) | aes2.->(\fff g8 f) | c'4 r c-> r | 
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
  e4-. e-. d-. d-. | a4 r8 c,\p( d e f g) |
  a4.(\< gis8) a4.( gis8) | a4.(\> g8) f-. g-. a-. bes-. |
  c4-.\! c-. c-. c-. | c4 r \acciaccatura d8 c( b c d ) |
  e4-. r8 d->\f c4-> b-> | bes4-> a-> g-> gis-> |
  a4-> r g2->( | f4) r r2
  
  %TRIO
  \key bes \major
  
  \repeat volta 2 {
    r4 f-.\p\< g-. a-. | bes4-. c-. d-. ees-. | f2->\f f2-> | f2->~ f8 ees-. d-. c-. |
    bes4-. d-. c-. bes-. | f4-. r r2 | g2( d'4. c8) | c4 r r2 |
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
  bes4 r r2 | f4->\f g-> aes-> c-> | bes4-> r d2->( | ees4) ees,-. f-. g-. |
  
  %TRIO
  \key aes \major
  
  \repeat volta 2 {
    aes4 c\p\< c c | r4 c c c | bes2->\f c-> | des2->~ des8 r r4 |
    r4 c r c | c4 c-. bes-. aes-. | d1( | des4) ees,-.\p f-. g-. |
    aes4 c\< c c | r4 c c c | c4\f r c2->( | des4) r bes2->\ff( |
    c4) ees,-. f-. g-. | aes4-. bes-. c-. des-. | ees4-. r des2->(
  }
  \alternative {
    { c4) ees,-.\p f-. g-. | }
    { c4\repeatTie g-.\ff aes-. bes-. | }
  }
  %mark D
  \repeat volta 2 {
    c4-. r bes2->( | aes4) r g-. f-. | e4-. r r2 | r2 r4 g8-. aes-. |
    bes4-. r aes2->( | g4) r f-. ees-. | d4-. r r2 | R1 |
    ees2.-> f4 | g2.-> aes4 | bes4-. c-. des-. d-. | ees4-. ees,-.\fff f g |
    %mark E
    aes4-. ees'-. d-. des-. | c4-. bes-. aes-. ees-. | bes'2-> c-> | des2->~ des8 r r4 |
    r4 ees-. des-. c-. | aes4-. c-. bes-. aes-. | d1( | des!4) ees,-. f-. g-. |
    aes4-. ees'-. d-. des-. | c4-. bes-. aes-. ees-. | c'4-. r c2->( | des4) r b2->( |
    c4) ees,-. f-. g-. | aes4-. bes-. c-. des-. | ees4-. r des2->( |
  }
  \alternative {
    { c4) g-. aes-. bes-. | }
    { c4\repeatTie r c r | }
  }
}

tromboneTwo = \relative c' {

}

tromboneThree = \relative c {

}

baritoneTC = \relative c'' {
  \key f \major
  c2\ff( e | f4) r r2 | r2 c2->( | c,4) r r2 |
  
  %mark A
  \repeat volta 2 {
    c'2\p\<( cis | d2\> des | c4\!) bes-. a-. g-. | f4-. r \acciaccatura d'8 c( b c d) |
    e4-. e-. d-. d-. | bes4-. g( bes c) | e4-. e-. d-. d-. | a4-. r r2 |
    c2\p\<( cis | d2\> des | c4\!) bes-. a-. g-. | f4-. r \acciaccatura d'8 c( b c d) |
    e4-. r r2 | r4 r8 e-> d4-> c-> | g4 r g2->( | 
  }
  \alternative {
    { c,4) r r2 | }
    { c4\repeatTie r r2 | }
  }
  
  %mark B
  \key aes \major
  
  \repeat volta 2 {
    aes''!4-.\ff g-. f2->~ | f4 aes-. g-. f-. | ees!4 r r2 | r4 g,4( bes ees) |
    aes4-. g-. f2->~ | f4 aes-. g-. f-. | ees4 r r2 | r4 g,4( bes ees) |
    r4 e\p( f fis) | g1 | r4 c,( d e) | f1~ | 
    f4 r r2 | aes2.->(\fff g8 f) | <c c'>4 r <c c'> r |
  }
  \alternative {
    { R1 | }
    { R1 | }
  }
  
  %mark C
  \key f \major
  
  c2\p\<( cis | d2\> des | c4\!) bes-. a-. g-. | f4-. r \acciaccatura d'8 c( b c d) |
  e4-. e-. d-. d-. | bes4-. g( bes c) | e4-. e-. d-. d-. | a4-. r r2 |
  c2\p\<( cis | d2\> des | c4\!) bes-. a-. g-. | f4-. r \acciaccatura d'8 c( b c d) |
  e4-. r r2 | g,4-> a-> bes-> b-> | c4-. r c2->( | f,4) f-. g-. a-. |
  
  %TRIO
  \key bes \major
  \repeat volta 2 {
    bes4-. f-.\p\< g-. a-. | bes-. c-. d-. ees-. | f2->\f f2-> | f2->~ f8 ees-. d-. c-. |
    bes4-. d-. c-. bes-. | f4-. <d d'>-. <c c'>-. <bes bes'>-. | e'1( | ees!4) f,-. g-. a-. |
    bes4-. f-.\p\< g-. a-. | bes-. c-. d-. ees-. | f4 r f4.->( fis8 | g4) r e2->(\ff | 
    f4) f,-. g-. a-. | bes4-. c-. d-. ees-. | f4-. r f,2( |
  }
  \alternative {
    { <bes, bes'>4) f'-. g-. a-. | }
    { bes4-. a-. bes-. c-. | }
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

