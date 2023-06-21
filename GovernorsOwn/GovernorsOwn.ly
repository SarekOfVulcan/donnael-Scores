\version "2.24.0"
\include "changePitch.ly"

\pointAndClickOff

\header {
  title = "The Governor's Own"
  subtitle = "March"
  composer = "Alton A. Adams"
  arranger = \markup { \smaller "edited by G. Fitzgerald" }
  copyright = "Public domain. Version 2019-02-22"
  tagline = ##f
}

rehearsalMarks = \relative c' {
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #2
  \set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 4)
  
  \time 2/4
  \partial 16*5 s16*5 | s2*8 |
  
  \mark \markup { \circle "A" }
  \repeat volta 2 {
    s2*15 |
  }
  \alternative {
    {s2 | }
    {s2 | }
  }
  \mark \markup { \circle "B" }
  \repeat volta 2 {
    s2*15 |
  }
  \alternative {
    {s2 | }
    {s2 | }
  }
  
  \bar "||" \break
  
  \mark \markup { \bold "TRIO" }
  s2*16 |
  \mark \markup { \circle "C" }
  s2*16 | \bar "||"

  \mark \markup { \circle "D" }
  s2*12 | \bar "||"

  \mark \markup { \circle "E" }
  s2*16
  \mark \markup { \circle "F" }
  s2*16
  
  \bar "|." 
}

% Define patterns for changePitch/cPI/cPII/cPIII/cPIV
patI = { c4 r8 }
patII = { c4 c8 }
patIII = { c8[ r8 c8] }
patIV = { r8 \samePitch { c c } }

piccoloDb = \relative c''' {
 
}

fluteOne = \relative c''' {
 
}

oboeOne = \relative c'' {

}

bassoonOne = \relative c {

}

clarinetInEb = \relative c'' {

}

clarinetOne = \relative c''' {

}

clarinetTwo = \relative c'' {

}

clarinetThree = \relative c'' {

}

saxSoprano = \relative c'' {

}

saxAlto = \relative c'' {

}

saxTenor = \relative c'' {

}

saxBaritone = \relative c' {

}

cornetSolo = \relative c'' {
  \key bes \major

  bes16\ff d8. f,16 | d'2~ | d8. bes16 d8. f,16 | d'2~ | d8. bes16 d8. f,16 |
  f'8. e16 ees8. d16 | c8 bes a g | f8 r \acciaccatura e'8 f4 | r8 e,16\mf( f) g a bes c |
  \repeat volta 2 {
    d16( cis d8) r c | c16( b c8) r bes | a16 a a8 a gis | a8 f16( g) a bes c d |
    ees16( d ees8) r d | c16( b c8) r bes | a8.\< c16 ees8 e8 g8\>( f e ees\!) |
    d16( cis d8) r c | c16( b c8) r bes | a16 a a8 a bes | c4. c16\ff c |
    c4. c16 c | c4. c16 c | c8 cis d e |
  }
  \alternative {
    { f8 e,16(\mf f) g a bes c | }
    { f8 r f,16(\f\< fis) g gis | }
  }
  % mark B
  \repeat volta 2 {
    a8.\ff gis16 a8. gis16 | a8 bes16( a) g8 f | d'8 d d4~ | d4 bes16 c bes g |
    bes8 a a4~ | a4 a16 bes a f | g8 ges f4~ | f8 r f g |
    a8. gis16 a8. gis16 | a8 bes16( a) g8 f | c'8 bes bes4~ | bes4 bes16( a) bes c |
    des4-> bes16( a) bes c | d!4-> d16( cis) d ees | f8 ees d c |
  }
  \alternative {
    { bes8 r f16(\f\< fis) g gis\! | }
    { bes8 r g'8.\mf( fis16 | }
  }
  
  % TRIO
  \key ees \major
  g2~\mf | g4) ees8.( d16 | ees2~ | ees4) bes8.( a16 |
  bes4) ees\< | f4 ees | ees2\>( | d4\!) f8.( e16 |
  f2~ | f4) d8.( cis16 | d2~ | d4) bes8. c16 |
  d4\< c | bes4 a | c2\>( | bes4\!) g'8.( fis16 |
  % mark C
  g2~ | g4) ees8.( d16 | ees2~ | ees4) bes8.( a16 |
  bes4\<) ees | e4 g\! | f2~ | f8[ r16\< e f8. g16] |
  a4\f c,~ | c8[ r16 d ees8. f16] | g4 bes,~ | bes8[ r16 g'16 fis8. g16] |
  c,2 | d2 | ees2~ | ees8 r r4 |
  % mark D
  r8 a16\ff( g a8) g | f8 r r4 | r8 g16( fis g8) f | ees8 r r4 |
  r8 g16( fis g8) f | ees8 r r4 | r8 f16( e f8) ees | d8 r bes4->( |
  c8) r cis4->( | d8) r ees4( | f8) bes,16 bes bes8 bes16 bes | bes8 r g'8.\f( fis16
  % mark E
  g2~ | g4) ees8.( d16 | ees2~ | ees4) bes8.( a16 |
  bes4) ees\< | f4 ees | ees2\>( | d4\!) f8.( e16 |
  f2~ | f4) d8.( cis16 | d2~ | d4) bes8. c16 |
  d4\< c | bes4 a | c2\>( | bes4\!) g'8.( fis16 |
  % mark F
  g2~ | g4) ees8.( d16 | ees2~ | ees4) bes8.( a16 |
  bes4\<) ees | e4 g\! | f2~ | f8[ r16\< e f8. g16] |
  a4\ff c,~ | c8[ r16 d ees8. f16] | g4 bes,~ | bes8[ r16 g'16 fis8. g16] |
  c,2 | d2 | ees2~ | ees8 r r4 |
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

basses = \relative c, {

}

drumSnareBass = \drummode {
  \clef percussion


}



dummyPart = \relative c'' {
  \key g \major
  

  %mark A
  \repeat volta 2 {

  }
  \alternative {
    {   }
    {   }
  }
  %mark B
  \repeat volta 2 {
    
    %mark C
    
  }
  \alternative {
    {   }
    {   }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    
  }
  \alternative {
    {   }
    {   }
  }
  %mark D
  \repeat volta 2 {
    
    %mark E
    
  }
  \alternative {
    {   }
    {   }
  } 
}

