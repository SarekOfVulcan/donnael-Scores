\version "2.24.3"
\include "changePitch.ly"

\pointAndClickOff

\header {
  title = "Old Comrades"
  composer = "C. Teike"
  arranger = \markup { \smaller "arr. by L. P. Laurendeau" }
  copyright = "Public domain. Version 2024-05-26"
  tagline = ##f
}

rehearsalMarks = \relative c' {
  \set Score.skipBars = ##t
  \override MultiMeasureRest.expand-limit = #1
  \set countPercentRepeats = ##t
  \set repeatCountVisibility = #(every-nth-repeat-count-visible 4)

  \time 2/2

  s1*4 |
  \bar "||"
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
  
  \bar "||" 
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

clarinetOne = \relative c'' {
  \key f \major
  f4->\ff r c8 b c f | a4-> r f8 e f a | c4-> c8 c c4 c | c4 r r2 |
  
  %mark A
  a4\p r a r | a4 r a8 gis a bes | a4 r a r | a4 r c,8 b c e |
  f4\< r e r | d4\! r8 a'8 a4 r8 a | bes1~\> | bes4\! r r2 |
  g4 r g r | g4 r g8 fis g a | bes4 r bes r | bes4 r bes8a bes e, |
  c'4\< r bes r | bes4\! r8 g8 fis4 r8 g | a1~\> | a4\! r r2 |
 
  %mark B
  a4\mf r a r | a4 r a8 gis a bes | a4 r a r | a4 r c,8 b c e |
  f4\< r e r | d4\! r8 c'8 a4 r8 f | g1~\> | g4\! r r2 |
  \acciaccatura { g16 b d } b!4-^\fz r g8\p fis g b | d4 r b r |
  \acciaccatura { g16 c e } c4-^\fz r g8\p fis g c | e4 r c r |
  g8\f fis g gis a gis a ais | b4 r b r | c1~ | c4 r r2 |
  
  %mark C
  \repeat volta 2 {
    r4 bes\ff r bes | r4 bes r bes | r4 bes8 bes bes4 bes | bes4 bes bes bes |
    r4 a r a | r4 a r a | r4 a8 a a4 a | a4 a a a |
    r4 c,8( b c) e-. g-. d'-. | c4 r r2 | r4 c,8( b c) f-. a-. d-. | c4 r r2 |
    c,8( b) c-. d-. e( d) e-. f-. | g8( fis) g-. a-. bes( a) bes-. b-. | c4 r r2 | \afterGrace e,1\trill\>( { d16 e) } |
    %mark D
    \acciaccatura g8( f-.\p) e-. f-. r \acciaccatura g8( f-.) e-. f-. r | 
    \acciaccatura g8( f-.) e-. f-. r \acciaccatura g8( f-.) e-. f-. g-. |
    f4 e8 e e4 e | e2 r |
    \acciaccatura e8( d-.) cis-. d-. r \acciaccatura e8( d-.) cis-. d-. r |
    \acciaccatura e8( d-.) cis-. d-. r \acciaccatura e8( d-.) cis-. d-. e-. |
    d4 c8 c c4 c | c4 b8 c cis d dis e |
    \acciaccatura g8( f-.\p) e-. f-. r \acciaccatura g8( f-.) e-. f-. r | 
    \acciaccatura g8( f-.) e-. f-. r \acciaccatura g8( f-.) e-. f-. fis-. |
    g4\< d'8 d d4 d | d2\! r |
    \acciaccatura e,8( d-.\f) cis-. d-. r d-. e-. f-. g-. | a8-. c,-. f-. a-. c2-> |
    \acciaccatura c8( bes-.) a-. bes-. r \acciaccatura f8( e-.) d-. e-. r |
    

  }
  \alternative {
    { f4 r r2 | }
    { f4 r f8\< fis g a | }
  } 
  
  %Trio
  \key bes \major
  
  bes4->\fz r r2 | r2 f,4.\pp f8 |
  \repeat volta 2 {
    %mark E
    f2\< g | a2 bes\! | d1~ | d4 r c4. c8 |
    bes4 d,( cis d) | g2( f) | a,1~\> | a2\! f'4. f8 |
    f2\< g | a2 bes\! | c1~ | c4 r bes4. bes8 |
    a4 c,( b c) | g'2( f) | d1~\> | d4\! r f'4.\ff f8 |
    
    %mark F
    f2-> g-> | a2-> bes-> | d1~ | d4 r d4. d8 |
    d4 bes( a bes) | c2 bes | g1~ | g4 r g,4.\p fis8 |
    f!1~ | f4 a( c g') | f1~ | f4 d( bes g') |
    \acciaccatura g8( f4\mf)( e f a) | d2 c | bes1~ |
    
  }
  \alternative {
    { bes4 r f,4.\p f8 | }
    { bes'4\repeatTie r r2 | }
  }
  %mark G
  \repeat volta 2 {
    ees4\ff r ees r | ees4 r ees r | ees2.( a,4 | c2.) r4 |
    d4 r d r | d4 r d r | d2.( f,4 | bes2.) r4 |
  }
  \alternative {
    { a,4 r c r | ees4 r bes' r | a4 r8 a a4 r8 a | a2. r4 |
      f4 r bes r | d4 r d r | d4 r8 d d4 r8 d | d2. r4 |}
    { g,4 r c r | ees4 r ees r | d4 r8 d d4 r8 d | d4 \tuplet 3/2 { bes8( c bes) } a4 g |
      f4 r fis r | g4 r a r | bes4 bes8 bes bes4 bes | bes4 r r2 |}
  }  

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
  \key c \major
  c4->\ff r g8 fis g c | e4-> r c8 b c e | g4 b,8 b b4 b | b4 r r2 |
  
  %mark A
  c4\p r c r | c4 r c8 b c d | e4 r e r | e4\< e,( g c) | 
  e,2.\!( g4) | c4 e,( g e') | f1~\> | f4\! r r2 |
  b,4 r b r | b4 r b8 ais b c | d4 r d r | d4\< d,( g b) | 
  d2.\! g,4 | fis4( g a b) | c1~\> | c4\! r r2 |
 
  %mark B
  c4\p r c r | c4 r c8 b c d | e4 r e r | e4\< e,( g c) | 
  e,2.\!( g4) | e'4 r8 e\< e4 r8 c | a1~\! | a4 r r2 |
  d,4\fz( fis\p a b | c2.) r4 | d,4\fz( fis\p g b | d2.) r4 |
  c1~\f | c1 | b1~ | b4 r g4.\ff g8 |
  
  %mark C
  \repeat volta 2 {
    g2-> f'-> | e2-> d-> | cis4 r8 d e4 r8 d | g,4 r g4. g8 |
    g2-> e'-> | d2-> c-> | b4 r8 c d4 r8 c | g4 r g4. g8 |
    d'4 r g,2->~ | g4 r g4. g8 | e'4 r g,2~ | g4 r g4. g8 |
    f'2. f8 f | f2. f8 f | f4 r r2 | f1->\> |
    
    %mark D
    e8\p e e r e e e r | e8 e e r e2:8 | f4 f8 f f4 f | f2 r |
    f8 f f r f f f r | f8 f f r f2:8 | e4 e8 e e4 e | e4 r f2-> |
    e8 e e r e e e r | e8 e e r e2:8 | d4\< f8 f f4 f | f4\! f,8 g a b c cis |
    d4\f r a2-> | c2-> r | f8 f f r f f f r |
  }
  \alternative {
    { e4 r g,4.\ff g8 | }
    { e'4 r c2-> | }
  }
  
  %Trio
  \key f \major
  
  c4->\fz r r2 | r2 c4.\p c8 |
  \repeat volta 2 {
    %mark E
    c2\< d | e2 f\! | a1~ | a4 r g4. g8 |
    f4 a,( gis a) | d2( c) | e,1~\> | e4\! r c'4. c8 |
    c2\< d | e2 f\! | g1~ | g4 r f4. f8 |
    e4 g,( fis g) | d'2( c) | a1~\> | a4\! r c4.\ff c8 | 
    
    %mark F
    c2-> d-> | e2-> f-> | a1~ | a4 r a4. a8 |
    a4 f( e f) | g2 f | d1~ | d4 r d4.\p cis8 | 
    c!1~ | c4 c( e bes') | a1~ | a4 a( f d) |
    c4\mf( b c e) | c2 bes | a1~ |
  }
  \alternative {
    { a4 r c4.\p c8 | }
    { a4\repeatTie r r2 | }
  }
  %mark G
  \repeat volta 2 {
    e'4\ff r e r | e4 r e r | e2.( c4 | e2.) r4 |
    f4 r f r | f4 r f r | f2.( c4) | a2. r4 |
  }
  \alternative {
    { c4 r e r | g4 r f r | e4 r8 g g4 r8 g | g2 r |
      c,4 r f r | a4 r a r | a4 r8 a a4 r8 a | a2. r4 |}
    { bes,4 r bes r | d4 r bes' r | a4 r8 f f4 r8 f | f4 \tuplet 3/2 { f8( g f) } e4 d |
      c2 cis | d2 c! | c4 c8 c c4 c | c4 r r2 | }
  }
}

saxTenor = \relative c'' {
  \key f \major
  
  a4->\ff r r2 | c4-> r r2 | e4-> c8 c c4 c | c4 bes\> a g |
  
  %mark A
  a2.(\p g4 | f4) d'( c a) | f2. a4 | f4( a c f) |
  a,2.(\< c4) | f4\! a,( c f) | c1~\> | c4\! r r2 |
  bes2.( g4 | e4) c'( bes g) | e2. g4 | e4(\< g c e) |
  g2.\! c,4( | b4 c d e) | c1~\> | c4\! r r2 |
  %mark B
  a2.\mf( g4 | f4) d'( c a) | f2. a4 | f4 a( c f) |
  a,2.(\< c4\!) | f4 f,( a c) | bes1~ | bes4 r r2 |
  g4\fp( b d e | f2.) r4 | g,4\fp( b c e | g2.) r4 |
  g,4\f b d g | g,4 b d g | c,1~ | c4 r c4.\ff c8 |
  
  %mark C
  \repeat volta 2 {
    c2-> bes'-> | a2-> g-> | fis4 r8 g a4 r8 g | c,4 r c4. c8 |
    c2-> a'-> | g2-> f-> | e4 r8 f g4 r8 f | c4 r c4. c8 |
    g'4 r c,2->~ | c4 r c4. c8 | a'4 r c,2->~ | c4 c c4. c8 |
    e2. e8 e | e2. e8 e | e4 r r2 | c1\> | 
    %mark D
    c8\p c c r c c c r | c8 c c r c2:8 | c4 c8 c c4 c | c4 c,8 d e f g a |
    bes2. r4 | bes4 r bes r | a4 d c a | f4 r c'2-> |
    c8 c c r c c c r | c8 c c r c2:8 | bes4\< d8 d d4 d | d4\! bes8 c d e f fis |
    g4 r d2->\ff | c2-> r | c8 c c r c c c r |
  }
  \alternative {
    { c4 r c4.\ff c8 | }
    { c4 r ees2-> | }
  }
  
  %Trio
  \key bes \major
  
  d4->\fz r r2 | r2 f,4.\p f8 |
  \repeat volta 2 {
    %mark E
    f2\< g | a2 bes\! | d1~ | d4 r c4. c8 | 
    bes4 d( cis d) | g2( f) | a,1~\> | a4\! r f4. f8 |
    f2\< g | a2 bes\! | c1~ | c4 r bes4. bes8 | 
    a4 c( b c) | g'2( f) | d1~\> | d4\! r f,4.\ff f8 |
    
    %mark F
    f2 g | a2 bes | d4 r8 f, g4 r8 a | bes2 d4. d8 |
    d4 bes( a bes) | c2 bes | g4 r8 b c4 r8 ees | g2 r |
    f,4\p( a c g') | f1~ | f4 d( bes g) | f1 |
    f4\mf( e f a) | d2 c | bes1~ |
  }
  \alternative {
    { bes4 r f4.\p f8 | }
    { bes4\repeatTie r r2 | }
  }
  %mark G
  \repeat volta 2 {
    f4\ff r f4. g8 | a4. bes8 c4. d8 | ees1~ | ees4 r f, r | 
    bes4 r f4. g8 | a4. bes8 c4. cis8 | d1~ | d4 r r2 |
  }
  \alternative {
    { f,4. g8 a4. bes8 | c4. d8 ees4. e8 | f2. f4 | ees4 c a g |
      f4. a8 bes4. c8 | d4. a8 bes4. g'8 | f2. e4 | f4 d( bes g) | }
    { g4. b8 c4. d8 | ees4. b8 c4. g'8 | f2. f,4 | f'4 d f bes, |
      f2 fis | g2 ees' | d4 d8 d d4 d | d4 r r2 | }
  }
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
    \acciaccatura g8 f-. e-. f-. r \acciaccatura g8 f-. e-. f-. g-. |
    f4 e8 e e4 e | e2 r |
    \acciaccatura e8 d-. cis-. d-. r \acciaccatura e8 d-. cis-. d-. r |
    \acciaccatura e8 d-. cis-. d-. r \acciaccatura e8 d-. cis-. d-. e-. |
    d4 c8 c c4 c | c4 b8 c cis d dis e |
    \acciaccatura g8 f-.\p e-. f-. r \acciaccatura g8 f-. e-. f-. r |
    \acciaccatura g8 f-. e-. f-. r \acciaccatura g8 f-. e-. f-. fis-. |
    g4\< d8 d d4 d | d2\! r |
    \acciaccatura e8 d-.\f cis-. d-. r d-. e-. f-. g-. | a8 c, f a c2-> |
    bes,8-. a-. bes-. r e-. d-. e-. r |

  }
  \alternative {
    { f4 r r2 | }
    { f4 r f,8\< fis g a | }
  }
  
  %Trio
  \key bes \major 
  
  bes4->\fz r r2 | R1 |
  \repeat volta 2 {
    %mark E
    R1*2 | f8\! r f r f r f r | bes4 r8 f f4 r |
    R1*2 | f8 r f r f r f r | a4 r8 f f4 r |
    R1*2 | f8 r f r f r f r | c'4 r8 f, f4 r |
    R1*2 | f8 r f r f r f r | bes4 r f4.\ff f8 |

    %mark F
    f2-> g-> | a2-> bes-> | d1~ | d4 r d4. d8 |
    d4( bes a bes) | c2 bes | g1~ | g4 r g4.\p fis8 |
    f!1~ | f4 a( c g') | f1~ | f4 d( bes g) |
    \acciaccatura g8\mf f4( e f a) | d2 c | bes1~
    
    
  }
  \alternative {
    { bes4 r r2 | }
    { bes4\repeatTie f8\ff f f4 f | }
  }
  %mark G
  \repeat volta 2 {
    ees'4 r ees r | ees4 r ees r | ees2.( a,4 | c2.) r4 |
    d4 r d r | d4 r d r | d2.( f,4 | bes2.) r4
  }
  \alternative {
    { a4 r c r | ees4 r bes' r | a4 r8 a a4 r8 a | a2. r4 |
      f,4 r bes r | d4 r g r | f4 r8 f f4 r8 f | f2. r4 | }
    { a,4 r c r | ees4 r g r | f4 r8 d d4 r8 d | d4 \tuplet 3/2 { bes8( c bes) } a4 g |
      f4 r fis r | g4 r a r | bes4 bes8 bes bes4 bes | bes4 r r2 |}
  }
}

cornetOne = \relative c'' {

}

cornetTwo = \relative c' {

}

cornetThree = \relative c' {

}

hornOne = \relative c'' {
  \key bes \major
  
  bes4->\ff r r2 | bes4-> r r2 | a4 a8 a a4 a | a4 r r2 |
  
  %mark A
  r4 bes\p r bes | r4 bes8 bes bes4 bes | r4 bes r bes | r4 bes8\< bes bes4 bes\! |
  r4 bes r bes | r4 bes r bes | r4 a\> r a | r4\! a r a |
  r4 a r a | r4 a8 a a4 a | r4 a r a | r4 a8\< a a4 a\! |
  r4 a r a | r4 a r a | r4 bes8\> bes bes4 bes | bes4\! bes bes bes |
 
  %mark B
  r4 bes\mf r bes | r4 bes8 bes bes4 bes | r4 bes r bes | r4 bes8\< bes bes4 bes\! |
  r4 bes r bes | r4 bes r bes | r4 g8 g g4 g | g4 g g g |
  bes4-^\f bes\p r bes | r4 bes8 bes bes4 bes | a4-^\f a\p r a | r4 a8 a a4 a |
  r4 bes4\f r bes | r4 bes r bes | r4 a8 a a4 a | a4 r r2 |
  
  %mark C
  \repeat volta 2 {
    r4 ees'\ff r ees | r4 ees r ees | r4 ees8 ees ees4 ees | ees4 ees ees ees |
    r4 d r d | r4 d r d | r4 d8 d d4 d | d4 d d d |
    r4 ees8 ees ees4 ees | ees1-> | r4 d8 d d4 d | d1-> |
    ees2. ees8 ees | ees2. ees8 ees | ees4 r r2 | a,1\> |
    %mark D
    r4 bes\p r bes | r4 bes r bes | r4 a8 a a4 a | r4 a a a |
    r4 g r g | r4 g r g | r4 bes8 bes bes4 bes | bes4 r c2-> |
    r4 bes r bes | r4 bes r bes | r4 g8\< g g4 g | r4\! g4 g g |
    g4\f r r2-> | bes4 bes8 bes bes4 bes | r4 c r c |
  }
  \alternative {
    { bes4 r r2 | }
    { bes4 r bes2->\< | }
  }
  
  %Trio
  \key ees \major
  bes4->\fz bes\p r bes | r4 bes r bes |
  \repeat volta 2 {
    %mark E
    r4 bes\p\< r bes | r4 bes r bes\! | r4 bes8 bes bes4 bes | bes4 bes bes bes |
    r4 bes r bes | r4 bes r bes | r4 bes8\> bes bes4 bes | bes4 bes bes bes \! |
    r4 bes\< r bes | r4 bes r bes\! | r4 bes8 bes bes4 bes | bes4 bes bes bes |
    r4 bes r bes | r4 bes r bes | r4 bes8\> bes bes4 bes | bes4 bes bes bes\! |
    
    %mark F
    r4 bes\ff r bes | r4 bes r bes | r4 bes8 bes bes4 bes | bes4 bes bes bes |
    r4 bes r bes | r4 bes r bes | r4 c8 c c4 c | c4 c c aes |
    r4 bes r bes | r4 bes r bes | r4 bes r bes | r4 bes r bes |
    r4 aes\mf r aes | r4 aes r aes | g4 bes8 bes bes4 bes |
  }
  \alternative {
    { bes4 r r2 | }
    { bes4 bes8\ff bes bes4 bes | }
  }
  %mark G
  \repeat volta 2 {
    r4 bes r bes | r4 bes r bes | r4 bes r bes | r4 bes8 bes bes4 bes |
    r4 bes r bes | r4 bes r bes | r4 bes r bes | r4 bes8 bes bes4 bes |
  }
  \alternative {
    { r4 bes r bes | r4 bes r bes | r4 bes r bes | r4 bes8 bes bes4 bes | 
      r4 bes r bes | r4 bes r bes | r4 bes r bes | r4 bes8 bes bes4 bes | }
    { r4 c r c | r4 c r c | r4 bes r bes | r4 bes8 bes bes4 bes |
      r4 bes r b | r4 c r bes! | bes4 bes8 bes bes4 bes | bes4 r r2 | }
  }
}

hornTwo = \relative c' {
  \key bes \major
  
  d4->\ff r r2 | d4-> r r2 | c4 c8 c c4 c | c4 r r2 |
  
  %mark A
  r4 d\p r d | r4 d8 d d4 d | r4 d r d | r4 d8\< d d4 d\! |
  r4 d r d | r4 d r d | r4 ees\> r ees | r4\! ees r ees |
  r4 ees r ees | r4 ees8 ees ees4 ees | r4 ees r ees | r4 ees8\< ees ees4 ees\! |
  r4 ees r ees | r4 ees r ees | r4 d8\> d d4 d | d4\! d d d |
 
  %mark B
  r4 d\mf r d | r4 d8 d d4 d | r4 d r d | r4 d8\< d d4 d\! |
  r4 d r d | r4 d r d | r4 c8 c c4 c | c4 c c c |
  c4-^\f c\p r c | r4 c8 c c4 c | c4-^\f c\p r c | r4 c8 c c4 c |
  r4 c4\f r c | r4 c r c | r4 c8 c c4 c | c4 r r2 |
  
  %mark C
  \repeat volta 2 {
    r4 f\ff r f | r4 f r f | r4 f8 f f4 f | f4 f f f |
    r4 f r f | r4 f r f | r4 f8 f f4 f | f4 f f f |
    r4 f8 f f4 f | f1-> | r4 f8 f f4 f | f1-> |
    f2. f8 f | f2. f8 f | f4 r r2 | ees1\> |
    %mark D
    r4 d\p r d | r4 d r d | r4 ees8 ees ees4 ees | r4 ees ees ees |
    r4 ees r ees | r4 ees r ees | r4 d8 d d4 d | d4 r ees2-> |
    r4 d r d | r4 d r d | r4 c8\< c c4 c | r4\! c4 c c |
    c4\f r c2-> | d4 d8 d d4 d | r4 ees r ees |
  }
  \alternative {
    { d4 r r2 | }
    { d4 r aes'2->\< | }
  }
  
  %Trio
  \key ees \major
  g4->\fz g\p r g | r4 g r g |
  \repeat volta 2 {
    %mark E
    r4 g\p\< r g | r4 g r g\! | r4 g8 g g4 g | g4 g g g |
    r4 g r g | r4 g r g | r4 aes8\> aes aes4 aes | aes4 aes aes aes \! |
    r4 aes\< r aes | r4 aes r aes\! | r4 aes8 aes aes4 aes | aes4 aes aes aes |
    r4 aes r aes | r4 aes r aes | r4 g8\> g g4 g | g4 g g g\! |
    
    %mark F
    r4 g\ff r g | r4 g r g | r4 g8 g g4 g | g4 g g g |
    r4 g r g | r4 g r g | r4 f8 f f4 f | f4 f f f |
    r4 aes r aes | r4 aes r aes | r4 g r g | r4 g r g |
    r4 f\mf r f | r4 d r d | ees4 g8 g g4 g |
  }
  \alternative {
    { g4 r r2 | }
    { g4 bes8\ff bes bes4 bes | }
  }
  %mark G
  \repeat volta 2 {
    r4 aes r aes | r4 aes r aes | r4 aes r aes | r4 aes8 aes aes4 aes |
    r4 g r g | r4 g r g | r4 g r g | r4 g8 g g4 g |
  }
  \alternative {
    { r4 aes r aes | r4 aes r aes | r4 aes r aes | r4 aes8 aes aes4 aes | 
      r4 g r g | r4 g r g | r4 g r g | r4 g8 g g4 g | }
    { r4 f r f | r4 f r f | r4 g r g | r4 g8 g g4 g |
      r4 aes r f | r4 ees r aes | g4 g8 g g4 g | g4 r r2 | }
  }
}

hornThree = \relative c' {
  \key bes \major
  
  f4->\ff r r2 | f4-> r r2 | f4 f8 f f4 f | f4 r r2 |
  
  %mark A
  r4 f\p r f | r4 f8 f f4 f | r4 f r f | r4 f8\< f f4 f\! |
  r4 f r f | r4 f r f | r4 f\> r f | r4\! f r f |
  r4 f r f | r4 f8 f f4 f | r4 f r f | r4 f8\< f f4 f\! |
  r4 f r f | r4 f r f | r4 f8\> f f4 f | f4\! f f f |
 
  %mark B
  r4 f\mf r f | r4 f8 f f4 f | r4 f r f | r4 f8\< f f4 f\! |
  r4 f r f | r4 f r f | r4 ees8 ees ees4 ees | ees4 ees ees ees |
  e4-^\f e\p r e | r4 e8 e e4 e | f4-^\f f\p r f | r4 f8 f f4 f |
  r4 e4\f r e | r4 e r e | r4 f8 f f4 f | f4 r r2 |
  
  %mark C
  \repeat volta 2 {
    r4 a\ff r a | r4 a r a | r4 a8 a a4 a | a4 a a a |
    r4 bes r bes | r4 bes r bes | r4 bes8 bes bes4 bes | bes4 bes bes bes |
    r4 a8 a a4 a | a1-> | r4 bes8 bes bes4 bes | bes1-> |
    a2. a8 a | a2. a8 a | a4 r r2 | f1\> |
    %mark D
    r4 f\p r f | r4 f r f | r4 f8 f f4 f | r4 f f f |
    r4 g r g | r4 g r g | r4 f8 f f4 f | f4 r f2-> |
    r4 f r f | r4 f r f | r4 ees8\< ees ees4 ees | r4\! ees4 ees ees |
    ees4\f r g2-> | f4 f8 f f4 f | r4 f r f |
  }
  \alternative {
    { f4 r r2 | }
    { f4 r f2->\< | }
  }
  
  %Trio
  \key ees \major
  ees4->\fz ees\p r ees | r4 ees r ees |
  \repeat volta 2 {
    %mark E
    r4 ees\p\< r ees | r4 ees r ees\! | r4 ees8 ees ees4 ees | ees4 ees ees ees |
    r4 ees r ees | r4 ees r ees | r4 d8\> d d4 d | d4 d d d \! |
    r4 d\< r d | r4 d r d\! | r4 d8 d d4 d | d4 d d d |
    r4 d r d | r4 d r d | r4 ees8\> ees ees4 ees | ees4 ees ees ees\! |
    
    %mark F
    r4 ees\ff r ees | r4 ees r ees | r4 ees8 ees ees4 ees | ees4 ees ees ees |
    r4 ees r ees | r4 ees r bes' | r4 aes8 aes aes4 aes | aes4 aes aes aes |
    r4 d, r d | r4 d r d | r4 ees r ees | r4 ees r ees |
    r4 d\mf r d | r4 bes r bes | bes4 ees8 ees ees4 es |
  }
  \alternative {
    { ees4 r r2 | }
    { ees4 bes'8\ff bes bes4 bes | }
  }
  %mark G
  \repeat volta 2 {
    r4 d, r d | r4 d r d | r4 d r d | r4 d8 d d4 d |
    r4 ees r ees | r4 ees r ees | r4 ees r ees | r4 ees8 ees ees4 ees |
  }
  \alternative {
    { r4 d r d | r4 d r ees | r4 d r d | r4 d8 d d4 d | 
      r4 ees r ees | r4 ees r ees | r4 ees r ees | r4 ees8 ees ees4 ees | }
    { r4 c r c | r4 c r c | r4 ees r ees | r4 ees8 ees ees4 ees |
      r4 d r d | r4 ees r f | g4 ees8 ees ees4 ees | ees4 r r2 | }
  }
}

hornFour = \relative c' {
  \key bes \major
  
  d4->\ff r r2 | d4-> r r2 | c4 c8 c c4 c | c4 r r2 |
  
  %mark A
  r4 d\p r d | r4 d8 d d4 d | r4 d r d | r4 d8\< d d4 d\! |
  r4 d r d | r4 d r d | r4 c\> r c | r4\! c r c |
  r4 c r c | r4 c8 c c4 c | r4 c r c | r4 c8\< c c4 c\! |
  r4 c r c | r4 c r c | r4 d8\> d d4 d | d4\! d d d |
 
  %mark B
  r4 d\mf r d | r4 d8 d d4 d | r4 d r d | r4 d8\< d d4 d\! |
  r4 d r d | r4 d r d | r4 c8 c c4 c | c4 c c c |
  c4-^\f c\p r c | r4 c8 c c4 c | c4-^\f c\p r c | r4 c8 c c4 c |
  r4 c4\f r c | r4 c r c | r4 c8 c c4 c | c4 r r2 |
  
  %mark C
  \repeat volta 2 {
    r4 f\ff r f | r4 f r f | r4 f8 f f4 f | f4 f f f |
    r4 f r f | r4 f r f | r4 f8 f f4 f | f4 f f f |
    r4 f8 f f4 f | f1-> | r4 f8 f f4 f | f1-> |
    f2. f8 f | f2. f8 f | f4 r r2 | c1\> |
    %mark D
    r4 d\p r d | r4 d r d | r4 c8 c c4 c | r4 c c c |
    r4 c r c | r4 c r c | r4 d8 d d4 d | d4 r ees2-> |
    r4 d r d | r4 d r d | r4 c8\< c c4 c | r4\! c4 c c |
    c4\f r c2-> | d4 d8 d d4 d | r4 ees r ees |
  }
  \alternative {
    { d4 r r2 | }
    { d4 r d2->\< | }
  }
  
  %Trio
  \key ees \major
  ees4->\fz ees\p r ees | r4 ees r ees |
  \repeat volta 2 {
    %mark E
    r4 ees\p\< r ees | r4 ees r ees\! | r4 ees8 ees ees4 ees | ees4 ees ees ees |
    r4 ees r ees | r4 ees r ees | r4 d8\> d d4 d | d4 d d d \! |
    r4 d\< r d | r4 d r d\! | r4 d8 d d4 d | d4 d d d |
    r4 d r d | r4 d r d | r4 ees8\> ees ees4 ees | ees4 ees ees ees\! |
    
    %mark F
    r4 ees\ff r ees | r4 ees r ees | r4 ees8 ees ees4 ees | ees4 ees ees ees |
    r4 ees r ees | r4 ees r g | r4 f8 f f4 f | f4 f f f |
    r4 d r d | r4 d r d | r4 ees r ees | r4 ees r ees |
    r4 d\mf r d | r4 bes r bes | bes4 bes8 bes bes4 bes |
  }
  \alternative {
    { bes4 r r2 | }
    { bes4 bes'8\ff bes bes4 bes | }
  }
  %mark G
  \repeat volta 2 {
    r4 d, r d | r4 d r d | r4 d r d | r4 d8 d d4 d |
    r4 ees r ees | r4 ees r ees | r4 ees r ees | r4 ees8 ees ees4 ees |
  }
  \alternative {
    { r4 d r d | r4 d r ees | r4 d r d | r4 d8 d d4 d | 
      r4 ees r ees | r4 ees r ees | r4 ees r ees | r4 ees8 ees ees4 ees | }
    { r4 c r c | r4 c r c | r4 ees r ees | r4 ees8 ees ees4 ees |
      r4 d r d | r4 ees r f | g4 ees8 ees ees4 ees | ees4 r r2 | }
  }
}

tromboneOne = \relative c' {
  \key ees \major
  
  bes4->\ff r r2 | ees4-> r r2 | d4-> d8 d d4 d | d4\> aes g f |
  
  %mark A
  bes4\p r bes r | bes4 bes8 bes bes4 bes | bes4 r bes r | bes4 bes8 bes bes4 bes |
  bes1~\< | bes1~ | bes4\! r8 bes, a4 r8 bes\> | d4 r8 bes d4\! r8 f |
  bes4 r bes r | bes4 bes8 bes bes4 bes | bes4 r bes r | bes4 bes8 bes bes4 bes |
  bes1~\< | bes1~ | bes4\! r8 bes a4 r8 bes\> | c4 r8 bes g4\! r8 bes |
 
  %mark B
  bes4\mf r bes r | bes4 bes8 bes bes4 bes | bes4 r bes r | bes4 bes8 bes bes4 bes |
  bes1~\< | bes1( | c4)\! r8 f, e4 r8 f | g4 r8 f d4\! r8 c |
  a'1~\fp | a2.( ees'4) | d1~->\fp | d1 |
  ees1~\f | ees1 | d1~ | d4 r bes,4.\ff bes8 |
  
  %mark C
  \repeat volta 2 {
    bes2-> aes'-> | g2-> f-> | e4 r8 f g4 r8 f | bes,4 r bes4. bes8 |
    bes2-> g'-> | f2-> ees-> | d4 r8 ees f4 r8 ees | bes4 r bes4. bes8 |
    f'4 r bes,2->~ | bes4 r bes4. bes8 | g'4 r bes,2->~ | bes4 r bes4. bes8 |
    bes'4-> r8 a aes4-> r8 g | f4-> r8 ees d4-> r8 c | bes4 bes'8 c d4 c | bes4-> aes g f |
    %mark D
    bes4\p r bes r | bes4 r bes r | bes1~ | bes4 bes,8 c d ees f g |
    aes4 r c r | c4 r c r | bes1~ | bes4 r bes2-> |
    bes4 r bes r | bes4 r bes r | c1~\< | c4\! aes8 bes c d ees e | 
    f4\f r c2-> | ees2 r | r4 bes r bes |
  }
  \alternative {
    { bes4 r bes,4.\ff bes8 | }
    { bes'4 r des2-> | }
  }
  
  %Trio
  \key aes \major 
  
  c4->\fz c\p r c | r4 c r c |
  \repeat volta 2 {
    %mark E
    r4 c\< r c | r4 c r c\! | r4 c8 c c4 c | c4 c c c |
    r4 c r c | r4 c r c | r4 des8\> des des4 des | des4\! des des des |
    r4 des\< r des | r4 des r4 des\! | r4 des8 des des4 des | des4 des des des |
    r4 des r des | r4 des r des | r4 c8\> c c4 c | c4\! c ees,4.\ff ees8 |
    
    %mark F
    ees2 f | g2 aes | c4 r8 ees, f4 r8 g | aes2 c4. c8 |
    c1~ | c1 ( | bes4) r8 a bes4 r8 des | f2 r |
    r4 des\p r des | r4 des r des | r4 c r c | r4 c r c |
    r4 des\mf r des | r4 des r des | c4 c8 c c4 c |
  }
  \alternative {
    { c4 r r2 | }
    { c4 r r2 | }
  }
  %mark G
  \repeat volta 2 {
    des4\ff r ees,4. f8 | g4. aes8 bes4. c8 | des1~ | des4 r des r |
    c4 r ees,4. f8 | g4. aes8 bes4. b8 | c1~ | c4 c8 c c4 c |
  }
  \alternative {
    { ees,4. f8 g4. aes8 | bes4. c8 des4. d8 | ees2. ees4 | des4 bes g f |
      ees4. g8 aes4. bes8 | c4. g8 aes4. f'8 | ees2. d4 | ees4 c( aes f) | }
    { f4. a8 bes4. c8 | des4. a8 bes4. f'8 | ees2. ees,4 | ees'4 c ees aes, |
      ees2 e | f2 g | aes4 c8 c c4 c | c4 r r2 |}
  }
}

tromboneTwo = \relative c' {
  \key ees \major
  
  g4->\ff r r2 | g4-> r r2 | f4-> bes8 bes bes4 bes | bes4\> aes g f |
  
  %mark A
  g4\p r g r | g4 g8 g g4 g | g4 r g r | g4 g8 g g4 g |
  g1~\< | g1( | aes4)\! r8 bes, a4 r8 bes\> | d4 r8 bes d4\! r8 f |
  aes4 r aes r | aes4 aes8 aes aes4 aes | aes4 r aes r | aes4 aes8 aes aes4 aes |
  aes1~\< | aes1( | g4\!) r8 bes a4 r8 bes\> | c4 r8 bes g4\! r8 bes |
 
  %mark B
  g4\mf r g r | g4 g8 g g4 g | g4 r g r | g4 g8 g g4 g |
  g1~\< | g1( | f4)\! r8 f e4 r8 f | g4 r8 f d4\! r8 c |
  f1~\fp | f1 | bes1~->\fp | bes1 |
  a1~\f | a1 | f1~ | f4 r bes,4.\ff bes8 |
  
  %mark C
  \repeat volta 2 {
    bes2-> aes'-> | g2-> f-> | e4 r8 f g4 r8 f | bes,4 r bes4. bes8 |
    bes2-> g'-> | f2-> ees-> | d4 r8 ees f4 r8 ees | bes4 r bes4. bes8 |
    f'4 r bes,2->~ | bes4 r bes4. bes8 | g'4 r bes,2->~ | bes4 r bes4. bes8 |
    bes'4-> r8 a aes4-> r8 g | f4-> r8 ees d4-> r8 c | bes4 bes'8 c d4 c | bes4-> aes g f |
    %mark D
    g4\p r g r | g4 r g r | aes1~ | aes4 bes,8 c d ees f g |
    aes4 r f r | f4 r f r | g1~ | g4 r aes2-> |
    g4 r g r | g4 r g r | aes1~\< | aes4\! aes8 bes c d ees e | 
    f4\f r f,2-> | g2 r | r4 aes r aes |
  }
  \alternative {
    { g4 r bes,4.\ff bes8 | }
    { g'4 r g2-> | }
  }
  
  %Trio
  \key aes \major 
  
  ees4->\fz ees\p r ees | r4 ees r ees |
  \repeat volta 2 {
    %mark E
    r4 ees\< r ees | r4 ees r ees\! | r4 ees8 ees ees4 ees | ees4 ees ees ees |
    r4 ees r ees | r4 ees r ees | r4 ees8\< ees ees4 ees | ees4\! ees ees ees |
    r4 g\< r g | r4 g r4 g\! | r4 g8 g g4 g | g4 g g g |
    r4 g r g | r4 g r g | r4 aes8\> aes aes4 aes | aes4\! aes ees4.\ff ees8 |
    
    %mark F
    ees2 f | g2 aes | c4 r8 ees, f4 r8 g | aes2 aes4. aes8 |
    aes1~ | aes1 ( | f4) r8 a bes4 r8 des | f2 r |
    r4 g,\p r g | r4 g r g | r4 aes r aes | r4 aes r aes |
    r4 g\mf r g | r4 g r g | ees4 ees8 ees ees4 ees |
  }
  \alternative {
    { ees4 r r2 | }
    { ees4 r r2 | }
  }
  %mark G
  \repeat volta 2 {
    g4\ff r ees4. f8 | g4. aes8 bes4. c8 | des1~ | des4 r ees, r |
    ees4 r ees4. f8 | g4. aes8 bes4. b8 | c1~ | c4 aes8 aes aes4 aes |
  }
  \alternative {
    { ees4. f8 g4. aes8 | bes4. c8 des4. d8 | ees2. ees4 | des4 bes g f |
      ees4. g8 aes4. bes8 | c4. g8 aes4. f'8 | ees2. d4 | ees4 c( aes f) | }
    { f4. a8 bes4. c8 | des4. a8 bes4. f'8 | ees2. ees,4 | ees'4 c ees aes, |
      ees2 e | f2 g | aes4 ees8 ees ees4 ees | ees4 r r2 |}
  }
}

tromboneThree = \relative c {

}

baritoneTC = \relative c' {
  \key f \major
  
  f4->\ff r r2 | f4-> r r2 | c4-> c' g e | c4 bes'\> a g |
  
  %mark A
  a2.\p( g4 | f4) d'( c a) | f2. c4 | f4( a c f) |
  a,2.\<( c4) | f4( a, c a\!) | c,4 r8 c b4 r8 b\> | e4 r8 c e4 r8 g\! |
  bes2.( g4 | e4) c'( bes g) | e2. c4 | e4( g c e) |
  g2.\< c,4( | b4 c d e\!) | f4 r8 c\> b4 r8 c | d4 r8 c a4 r8 g\! |
 
  %mark B
  a2.\mf( g4 | f4) d'( c a) | f2. c4 | f4( a c f) |
  a,2.\<( c4) | f4 f,( a c\!) | bes4 r8 g fis4 r8 g | a4 r8 g e4 r8 d |
  g4->\fp( b d e | f2.) r4 | g,4->\fp( b c e | g2.) r4 |
  g,4\f b d g | g, b d g | c,4 r g8 fis g e | c4 r c4.\ff c8 |
  
  
  %mark C
  \repeat volta 2 {
    c2-> bes'-> | a2-> g-> | fis4 r8 g a4 r8 g | c,4 r c4. c8 |
    c2-> a'-> | g2-> f-> | e4 r8 f g4 r8 f | c4 r c4. c8 | 
    g'4 r c,2->~ | c4 r c4. c8 | a'4 r c,2->~ | c4 r c4. c8 | 
    c'4-> r8 b bes4-> r8 a | g4-> r8 f e4-> r8 d | c4 c8 d e4 d | c4 bes'\> a g |
    %mark D
    f4\p r f r | f4 r f r | c4 e g c | c,4 c8-. d-. e-. f-. g-. a-. |
    bes1 | bes,4 r d r | f4 d' c a | f4 r c'2-> | 
    f,4 r f r | f4 r f r | bes2\< d,4 g\! | bes4 bes8 c d e f fis |
    g4\f r d2-> | c8 c, f a c2-> | c,4 r c' r |
  }
  \alternative {
    { f,4 r c4.\ff c8 | }
    { f4 r f8\< ees d c | }
  }
  
  %Trio
  \key bes \major 
  
  bes4->\fz r r2 | r2 f'4.\p f8 |
  \repeat volta 2 {
    %mark E
    f2\< g | a2 bes\! | d1~ | d4 r c4. c8 |
    bes4 d( cis d) | g2( f) | a,1~\> | a4\! r f4. f8 |
    f2\< g | a2 bes\! | c1~ | c4 r bes4. bes8 | 
    a4 c( b c) | g'2( f) | d1~\> | d4\! r f4.\ff f8 |
    
    %mark F
    d2 d | d2 d | d4 r8 f, g4 r8 a | bes2 d4. d8 |
    d4 bes( a bes) | c2 bes | g4 r8 b c4 r8 ees | g2 r |
    f,4\p( a c g') | f1~ | f4 d( bes g) | f1 | 
    f4\mf( e f a) | d2 c | bes4 bes f d |
  }
  \alternative {
    { bes4 r f'4.\p f8 | }
    { bes,4 r r2 | }
  }
  %mark G
  \repeat volta 2 {
    f'4\ff r f4. g8 | a4. bes8 c4. d8 | ees1~ | ees4 r f, r |
    bes4 r f4. g8 | a4. bes8 c4. cis8 | d1~ | d4 r r2 |
  }
  \alternative {
    { f,4. g8 a4. bes8 | c4. d8 ees4. e8 | f2. f4 | ees4 c a g |
      f4. a8 bes4. c8 | d4. a8 bes4. g'8 | f2. e4 | f4 d( bes g) | }
    { g4. b8 c4. d8 | ees4. b8 c4. g'8 | f2. f,4 | f'4 d f bes, |
      f2 ees | d2 c | bes4 bes' f d | bes4 r r2 }
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