\version "2.24.3"
\include "changePitch.ly"

\pointAndClickOff

\header {
  title = "Old Comrades"
  composer = "C. Teike"
  arranger = \markup { \smaller "arr. by L. P. Laurendeau" }
  copyright = "Public domain. Version 2024-02-25"
  tagline = ##f
}

rehearsalMarks = \relative c' {
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
  \set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 4)

  \time 2/2

  s1*4 |
  \section
  \mark \markup { \circle "A" }
  s1*16 |
  \mark \markup { \circle "B" }
  s1*16 |
  \mark \markup { \circle "C" }
  \repeat volta 2 {
    s1*16 |
    \mark \markup { \circle "D" }
    s1*15 |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  
  \section 
  \break
  \sectionLabel "Trio"
  s1*2 |
  \repeat volta 2 {
    \mark \markup { \circle "E" }
    s1*16
    \mark \markup { \circle "F" }
    s1*15
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  \mark \markup { \circle "G" }
  \repeat volta 2 {
    s1*8 | 
  }
  \alternative {
    { s1*8 | }
    { s1*8 \bar "|." }
  }
}

% Define patterns for changePitch/cPI/cPII/cPIII/cPIV
patI = { r4 c4 }
patII = { c4 c8 }
patIII = { c8[ r8 c8] }
patIV = { r8 \samePitch { c c } }

fz = #(make-dynamic-script "fz")



piccOne = \relative c'' {

}

oboeOne = \relative c'' {

}

oboeTwo = \relative c'' {

}

bassoonOne = \relative c {

}

clarinetEb = \relative c''' {

}

clarinetOne = \relative c''' {
  \key f \major
  

}

clarinetTwo = \relative c'' {
  \key f \major
  

}

clarinetThree = \relative c'' {
  \key f \major
  


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

cornetSolo = \relative c' {
  \key f \major
  
  f4->\ff r c8 b c f | a4-> r f8 e f a | c4-> c8 c c4 c4 | c4 r r2 |

  %mark A
  a4\p r a r | a4 r a8 gis a bes | c4 r c r | c4 r c8\< b c e |
  f4 r e\! r | d4 r8 c b4 r8 c | e1~\> | e4\! r r2 |
  g,4 r g r | g4 r g8 fis g a | bes4 r bes r | bes4 r bes8\< a bes c |
  e4 r d\! r | c4 r8 g fis4 r8 g | a1~\> | a4\! r r2 |
 
  %mark B
  a4\mf r a r | a4 r a8 gis a bes | c4 r c r | c4 r c8 b c e |
  f4 r e\< r | d4\! r8 c a4 r8 f | g1~ | g4 r r2 |
  g'4-^\fz r g,8\p fis g b | d4 r b r | g'4-^\fz r g,8\p fis g c | e4 r c r |
  g8\f fis g gis a gis a ais | b4 r g' r | c,1~ | c4 r r2 |
  
  %mark C
  \repeat volta 2 {
    r4\ff c r c | r4 c r c | r4 c8 c c4 c | c4 c c c |
    r4 c r c | r4 c r c | r4 c8 c c4 c | c4 c c c |
    r4 c8( b c) e,-. g-. d'-. | c4 r r2 | r4 c8( b c) f,-. a-. d-. | c4 r r2 |
    c,8( b) c-. d-. e( d) e-. f-. | g8( fis) g-. a-. bes( a) bes-. b | c4 r r2 | e1->\> |
    %mark D
    \acciaccatura g8 f-.\p e-. f-. r \acciaccatura g8 f-. e-. f-. r |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  
  %Trio
  s1*2 |
  \repeat volta 2 {
    %mark E
    s1*16
    
    %mark F
    s1*15
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  %mark G
  \repeat volta 2 {
    s1*8 | 
  }
  \alternative {
    { s1*8 | }
    { s1*8 | }
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
  

}

tromboneTwo = \relative c' {

}

tromboneThree = \relative c {

}

baritoneTC = \relative c'' {
  \key f \major


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
  s1*16 |
 
  %mark B
  s1*16 |
  
  %mark C
  \repeat volta 2 {
    s1*16 |
    %mark D
    s1*15 |
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  
  %Trio
  s1*2 |
  \repeat volta 2 {
    %mark E
    s1*16
    
    %mark F
    s1*15
  }
  \alternative {
    { s1 | }
    { s1 | }
  }
  %mark G
  \repeat volta 2 {
    s1*8 | 
  }
  \alternative {
    { s1*8 | }
    { s1*8 | }
  }
}