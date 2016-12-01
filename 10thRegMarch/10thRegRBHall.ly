\version "2.18.2"

\pointAndClickOff

\header {
  title = "Tenth Regiment March"
  composer = "R. B. Hall"
  arranger = \markup { \small "edited by Garrett Fitzgerald" }
  copyright = "Public domain."
}

rehearsalMarks = \relative c' {
  \time 6/8
  
  s2.*4
  \mark \markup { \circle "A" }
  s2.*17
  \mark \markup { \circle "B" }
  s2.*16
  \mark \markup { \circle "C" }
  s2.*17
  \mark \markup { \bold "TRIO" }
  s2.*17
  \mark \markup { \circle "D" }
  s2.*16 \bar "||"
  \mark \markup { \circle "E" }
  s2.*17 \bar "|."
}

dPiccolo = \relative c'' {
  \key e \major

}

fluteOne = \relative c'' {
  \key f \major

}

fluteTwo = \relative c'' {
  \key f \major

}

oboe = \relative c'' {
  \key f \major

}

clarinetInEb = \relative c'' {
  \key d \major

}

clarinetOneInBb = \relative c'' {
  \key g \major

}

clarinetTwoInBb = \relative c'' {
  \key g \major

}

clarinetThreeInBb = \relative c'' {
  \key g \major

}

clarinetAlto = \relative c'' {
  \key g \major

}

clarinetBass = \relative c'' {
  \key g \major

  g4.->\ff e-> | a4.-> fis->( |
  b8) r r d,4.->( | g8) r r r4 r |
% mark A
  \repeat volta 2 {
    \repeat percent 2 { g4\p r8 d4 r8 | } 
    a'4 r8 e4 r8 | a4 r8 g4 r8 |
    \repeat percent 2 { fis4 r8 d4 r8 | } 
    \repeat percent 2 { g4 r8 d4 r8 | } 
    \repeat percent 2 { g4 r8 d4 r8 | } 
    \repeat percent 2 { a'4 r8 a4 r8 | }
    a4.~\f a4 gis8 | g4.~ g4 fis8 |
    e8 r r a4.(
  }
  \alternative {
    { d8) r r r4 r8 | }
    { d8 r r r4 r8 | }
  }
  \repeat volta 2 {
    \repeat percent 3 { g4\ff d'8 d,4 d'8 | } g,4 r8 d4 r8 |
    \repeat percent 2 { g4\ff d'8 d,4 d'8 | } a4 d8 d,4 d'8 | a4 r8 d,4 r8 |
  }
}

bassoon = \relative c'' {
  \key f \major

}

saxSoprano = \relative c' {
  \key g \major

}

saxAlto = \relative c' {
  \key d \major

}

saxTenor = \relative c' {
  \key g \major

}

saxBaritone = \relative c' {
  \key d \major

}

saxBass = \relative c' {
  \key g \major

}

cornetInEb = \relative c'' {
  \key d \major 
  
}

cornetSolo = \relative c'' {
  \key g \major 
  
  b4.->\ff d-> | c4.-> fis4->( e8) |
  d8 r r b'4->( a8) | g4 r8 \grace { d16( e } d8)( cis c) |
% mark A
  \repeat volta 2 { 
    b8\p[ r b8] b[ r b] | \acciaccatura c8 b( ais b) e4( b8) |
    a8[ r a]( b)[ r b(] | c4.)~ c4 r8 |
    a8[ r a] a[ r a] | \acciaccatura b8 a( gis a) d4( c8) |
    b8[ r b]( c8[) r c8]( | d4.~)( d8 cis c) |
    b8[ r b] b[ r b] | \acciaccatura c8 b( ais b) d4( b8) |
    a8[ r a] a[ r a] | \acciaccatura b8 a( gis a) fis'4( d8) |
    cis8-.\f d-. dis-. e4.->~ | e8 eis fis g4.->~ |
    g8 r r cis,4.->( |
  }
  \alternative {
    { d8) r r \grace { d16( e } d8)( cis c) }
    { d8 d, e fis g a }
  } |
% mark B
  \repeat volta 2 {
    b4.->\ff b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 c4.->~ | c4 fis,8 a4 b8 |
    c4.-> c-> | c4-> c8 b4 c8 | g'8[ r fis] fis4.->~ | fis4 fis,8 a4 c8 |
    fis8[ r e] e4.->~ | e4 fis,8 a4 c8 | e8[ r ees] d4.->~ | d8 d, e fis g a |
% mark C
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b8 g a b c d | e2.~ | e4 e8 dis4 e8 |
    g4.-> cis,-> | fis4.-> e-> | e8 r r d4.~ | d4 g,8 a4 c8 |
    b4.->( a) | b4.~ b4 a8 | g2.~ | }
  \alternative {
    { g8 d e fis g a | }
    { g4 r8 r4 r8 | }
  }

  % mark TRIO
  \key c \major
  
  \repeat volta 2 {
    r4 g8\p( fis4 g8) | e'4.( c) | a4.( c) | g2. | 
    r4 g8( fis4 g8) | e'4.( c) | a4. e'4( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    a4.( f') | e4.( c) | d4( a8) b4( g8) |
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c8\< e-. e-. e-. e-. e-. | }
  }
  % mark D
  \repeat volta 2 {
    e8\ff r r r e-. e-. | e8-. r r r e-. e-. | 
    e8-. r r r4 r8 | r8 e-. e-. e-. e-. e-. |
    e8-. r r r e-. e-. | e8-. r r r e-. e-. |
    e8-. r r r4 r8 | r8 g g g g g |
    g8 r r r g g | g8 r r r g g |
    g8 r r r4 r8 | r8 g g g g g | 
    g8 r r r g g | g8 r r r g g | 
    g8 r r r4 r8 | r2. |    
    % mark E
    r4 g,8\fff( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    r4 g8( fis4 g8) | e'4.-> c-> | a4.-> e'4->( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    a4.-> f'-> | e4.-> c-> | d4( a8) b4( g8) |
  }
  \alternative {
    { c8\< e e e e e\! | }
    { c4 c16 c c4 r8 | }
  }
}


cornetOne = \relative c'' {
  \key g \major 

}

cornetTwo = \relative c' {
  \key g \major

}

cornetThree = \relative c' {
  \key g \major

}

trumpetOne = \relative c' {
  \key g \major

}

trumpetTwo = \relative c' {
  \key g \major

}

altoEbOne = \relative c'' {
  \key d \major

}

altoEbTwo = \relative c' {
  \key d \major

}

altoEbThree = \relative c' {
  \key d \major

}

altoEbFour = \relative c' {
  \key d \major

}

tromboneOne = \relative c'' {
  \key f \major

}

tromboneTwo = \relative c' {
  \key f \major
  
}

tromboneThree = \relative c, {
  \key f \major

}
		    
baritoneTC = \relative c' {
  \key g \major

}

basses = \relative c, {
  \key f \major

}

drumSnare = \drummode {
  \set countPercentRepeats = ##t

}

drumBass = \drummode {
  \set countPercentRepeats = ##t

}

timpaniBells = \relative c, {
  
}