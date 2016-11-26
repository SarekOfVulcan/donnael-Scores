\version "2.18.2"

\pointAndClickOff

\header {
  title = "Tenth Regiment March"
  composer = "R. B. Hall"
  arranger = \markup { \smaller "edited by G. Fitzgerald" }
  copyright = "Public domain. Version 2016-11-22"
}

rehearsalMarks = \relative c' {
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
    s2.*16 |
    \mark \markup { \circle "C" }
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  \mark \markup { \bold "TRIO" }
  \repeat volta 2 {
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | }
  }
  \mark \markup { \circle "D" }
  \repeat volta 2 {
    s2.*16 | \bar "||" 
    \mark \markup { \circle "E" }
    s2.*15 |
  }
  \alternative {
    {s2. | }
    {s2. | \bar "|." }
  }
}

fluteOne = \relative c''' {
  \key f \major
  
  a4.->\ff c-> | bes4.-> e4->( d8) |
  c8 r r 
  \tag #'fluteOne {<a a'>4->( <g g'>8) | <f f'>8 } 
  \tag #'clarEb {a4->( g8) | f8 } 
  r r \acciaccatura { c'16 d } c8\p( b bes)
  %mark A
  \repeat volta 2 {
    a8[ r a] a[ r a] | \acciaccatura bes a8( gis a) d4( a8) |
    g!8[ r g]( a[) r a]( | bes4.~) bes4 r8 |
    g8[ r g] g[ r g] | \acciaccatura a g8( fis g) c4( bes8) |
    a8[ r a]( bes[) r bes]( | c4.~)( c8 b bes) |
    a8[ r a] a[ r a] | \acciaccatura bes a8( gis a) c4( a8) |
    g8[ r g] g[ r g] | \acciaccatura a g8( fis g) e'4( c8) |
    b8-.\f c-. cis-. d4.->~ | d8 dis-. e-. f4.->~ |
    f8 r r b,4.->( |
  }
  \alternative {
    { c8) r r \acciaccatura { c16 d } c8\p( b bes) }
    { c8\repeatTie c,\< d e f g }
  }
  %mark B
  \repeat volta 2 {
    a4.->\ff a-> | a4-> a8 gis4 a8 | d4 c8 a4.->~ | a8 c, d e f g |
    a4.-> a-> | a4-> a8 gis4 a8 | d4 c8 bes4.->~ | bes4 e,8 g4 a8 |
    bes4.-> bes-> | bes4-> bes8 a4 bes8 | f'8[ r e] e4.->~ | e4 e,8 g4 bes8 |
    e8[ r d] d4.->~ | d4 e,8 g4 bes8 | d8[ r des] c4.->~ | c8 c, d e f g |
    %mark C
    a4.-> a-> | a4-> a8 gis4 a8 | d4 c8 a4.->~ | a8 c, d e f g |
    a4.-> a-> | a8 f g a bes c | d2.->~ | d4 d8 cis4 d8 |
    f4.-> b,-> | e4.-> d-> | d8 r r c4.->~ | c4 f,8 g4 bes8 |
    a4.->( g) | a4.->~( a4 g8) | f2.~ |    
  }
  \alternative {
    { f8 c\f\< d e f g\! | }
    { f4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    r4 f8\p( e4 f8) | d'4.( bes) | g4.( bes) | f2. |
    r4 f8( e4 f8) | d'4.( bes) | g4. d'4( c8) | c4 r8 r4 r8 |
    r4 f,8( e4 f8) | d'4.( bes) | g4.( bes) | f2. |
    g4.( ees') | d4.( bes) | c4( g8) a4( f8) |
  }
  \alternative {
    { bes4 r8 r4 r8 | }
    { bes8 d\< d d4.:8 | }
  }
  %mark D
  \repeat volta 2 {
    d8\ff r r r d d | d8 r r r d d | d8 r r r4 r8 | r8 d d d4.:8 |
    d8 r r r d d | d8 r r r d d | d8 r r r4 r8 | r8 f f f4.:8 |
    f8 r r r f f | f8 r r r f f | f8 r r r4 r8 | r8 f f f4.:8 |
    f8 r r r f f | f8 r r r f f | f8 r r r4 r8 | R2. |
    %mark E
    r4 f,8\fff( e4 f8) | d'4.-> bes-> | g4.-> bes-> | f2.-> |
    r4 f8( e4 f8) | d'4.-> bes-> | g4.-> d'4->( c8) | c4 r8 r4 r8 |
    r4 f,8( e4 f8) | d'4.-> bes-> | g4.-> bes-> | f2.-> |
    g4.-> ees'-> | d4.-> bes-> | c4( g8) a4( f8) |
  }
  \alternative {
    { bes8 d\f\< d d4.:8 | }
    { bes4\! bes16 bes bes4 r8 | }
  }
  
}
fluteTwo = \relative c''' {
  \key f \major
  
  a4.->\ff c-> | bes4.-> e4->( d8) |
  c8 r r c4->( bes8) | a8 r r \acciaccatura { c16 d } c8\p( b bes)
  %mark A
  \repeat volta 2 {
    a8[ r a] a[ r a] | \acciaccatura bes a8( gis a) a4.-> |
    g!8[ r g]( a[) r a]( | bes4.~) bes4 r8 |
    g8[ r g] g[ r g] | \acciaccatura a g8( fis g) a4( g8) |
    f!8[ r f]( g[) r g]( | a4.~) a8 r r |
    a8[ r a] a[ r a] | \acciaccatura bes a8( gis a) a4.-> |
    g8[ r g] g[ r g] | \acciaccatura a g8( fis g) e'4( c8) |
    b8-.\f c-. cis-. d4.->~ | d8 dis-. e-. f4.->~ |
    f8 r r b,4.->( |
  }
  \alternative {
    { c8) r r \acciaccatura { c16 d } c8\p( b bes) }
    { c8\repeatTie c,\< d e f g }
  }
  %mark B
  \repeat volta 2 {
    a4.->\ff a-> | a4-> a8 gis4 a8 | a4 a8 f4.->~ | f8 c d e f g |
    a4.-> a-> | a4-> a8 gis4 a8 | bes4 bes8 e,4.->~ | e4 e8 g4 a8 |
    bes4.-> bes-> | bes4-> bes8 a4 bes8 | f'8[ r e] e4.->~ | e4 e,8 g4 bes8 |
    e8 r d d4.->~ | d4 e,8 g4 bes8 | d8[ r des] c4.->~ | c8 c, d e f g |
    %mark C
    a4.-> a-> | a4-> a8 gis4 a8 | a4 a8 f4.->~ | f8 c d e f g |
    a4.-> a-> | a8 f g a bes c | d2.->~ | d4 d8 cis4 d8 |
    f4.-> b,-> | e4.-> d-> | d8 r r c4.->~ | c4 f,8 g4 f8 |
    f2.->( | e2.) | f2.~ |    
  }
  \alternative {
    { f8 c\f\< d e f g\! | }
    { f4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key bes \major
  \repeat volta 2 {
    r4 f8\p( e4 f8) | d'4.( bes) | g4.( bes) | f2. |
    r4 f8( e4 f8) | d'4.( bes) | g4. d'4( c8) | c4 r8 r4 r8 |
    r4 f,8( e4 f8) | d'4.( bes) | g4.( bes) | f2. |
    g4.( ees') | d4.( bes) | c4( g8) a4( f8) |
  }
  \alternative {
    { bes4 r8 r4 r8 | }
    { bes8 d\< d d4.:8 | }
  }
  %mark D
  \repeat volta 2 {
    d8\ff r r r d d | d8 r r r d d | d8 r r r4 r8 | r8 d d d4.:8 |
    d8 r r r d d | d8 r r r d d | d8 r r r4 r8 | r8 f f f4.:8 |
    f8 r r r f f | f8 r r r f f | f8 r r r4 r8 | r8 f f f4.:8 |
    f8 r r r f f | f8 r r r f f | f8 r r r4 r8 | R2. |
    %mark E
    r4 d,8\fff( cis4 d8) | f4.-> d-> | ees4.-> g4( ees8) | d2.-> |
    r4 d8( cis4 d8) | f4.-> d-> | e2.-> | ees!4 r8 r4 r8 |
    r4 d8( cis4 d8) | f4.-> d-> | ees4.-> g4->( ees8) | d2.-> |
    ees4.-> g-> | f4.-> d-> | ees4( g8) a4( f8) |
  }
  \alternative {
    { bes8 d\f\< d d4.:8 | }
    { bes4\! bes16 bes bes4 r8 | }
  }
}


oboe = \relative c' {
  
}

% clarinetInEb - dup of flute

clarinetOne = \relative c''' {
  \key g \major
  

  g4.->\ff gis-> | a4.-> ais-> |
  b8-. r r b4->( a8) | g8 r r \acciaccatura { d'16 e } d8\p( cis c)
  %mark A
  \repeat volta 2 {
    b8[ r b] b[ r b] | \acciaccatura c8 b( ais b) e4( b8) |
    a8[ r a]( b[) r b]( | c4.~) c4 r8 |
    a8[ r a] a[ r a] \acciaccatura b8 a( gis a) d4( c8) |
    b8[ r b]( c[) r c]( | d4.~) d8( cis c) |
    b8[ r b] b[ r b] | \acciaccatura c8 b( ais b) d4( b8) |
    a8[ r a] a[ r a] | \acciaccatura b8 a( gis a) fis'4( d8) |
    cis8-.[\f r cis-.] cis4.->~ | cis8-.[ r cis-.] cis4.->~ |
    cis8 r r g4.->( 
  }
  \alternative {
    { fis8) r r \acciaccatura { d'16 e } d8\p( cis c) | }
    { fis,8\repeatTie d\< e fis g a |  }
  }
  %mark B
  \repeat volta 2 {
    b4.->\ff b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 c4.->~ | c4 fis,8 a4 b8 |
    c4.-> c-> | c4-> c8 b4 b8 | c8[ r c] c4.->~ | c4 fis,8 a4 c8 |
    c8[ r c] c4.->~ | c4 fis,8 a4 c8 | b8[ r b] b4.->~ | b8 d, e fis g a |
    %mark C
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b8 g a b c d | e2.~-> | e4 e8 dis4 e8 |
    bes2.-> | bes2.-> | b!8 r r d4.~-> | d4 g,8 a4 c8 |
    b4.->( a) | b4.->~( b4 a8) | g2.~ |
  }
  \alternative {
    { g8 d\f\< e fis g a\~ |  }
    { g4\repeatTie g,,8\p(^"Soli" fis4 g8) }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    c4 e'8( dis4 e8) | g4.( e) | f4. a4( f8) | e2. |
    r4 e8( dis4 e8) | g4.( e) | fis2.( | f!4) g,,8( fis4 g8) |
    c4 e'8( dis4 e8) | g4.( e) | f4. a4( f8) | e2. |
    f4.( a) | g4. e | f2.( | 
  }
  \alternative {
    { e4) g,,8\p^"Soli"( fis4 g8) |  }
    { e''8
      \ottava #1
      \set Staff.ottavation = #"8"
      e'8-.\< e-. e-. e-. e-.
      \ottava #0 | }
  }
  %mark D
  \repeat volta 2 {
    gis,8\ff r r r gis gis | a8 r r r a a | gis8 r r r4 r8 | r8
    \ottava #1
    \set Staff.ottavation = #"8"
    e'8 e e e e
    \ottava #0 |
    gis,8 r r r gis gis | a8 r r r a a | gis8 r r r4 r8 | r8
    \ottava #1
    \set Staff.ottavation = #"8"
    g'8 g g g g
    \ottava #0 |
    b,8 r r r b b | c8 r r r c c | b8 r r r4 r8 | r8
    \ottava #1
    \set Staff.ottavation = #"8"
    g'8 g g g g
    \ottava #0 |
    b,8 r r r b b | c8 r r r c c | b8 r r r4 r8 | r2.
    %mark E
    r4 g8\fff( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    r4 g8( fis4 g8) | e'4.-> c-> | a4.-> e'4->( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    a4.-> f'-> | e4.-> c-> | d4( a8) b4( g8) |
  }
  \alternative {
    { c8 e-.\f\< e-. e-. e-. e-.\! | }
    { c4 c16 c c4 r8 |  }
  }
  
}

clarinetTwo = \relative c'' {
  \key g \major
  
  b4.->\ff d-> | c4.-> fis4->( e8) |
  d8 r r d4->( c8) | b8 r r r4 r8 |
  
  %mark A
  \repeat volta 2 {
    g4.\p( fis | e4. d | c4. b | a4.~ a4) r8
    fis''8[ r fis] fis[ r fis] | \acciaccatura g8 fis( eis fis) b4( a8) |
    g8[ r g]( a[) r a]( | b4.~) b8 r r  |
    g,4.( fis | e4. d) | 
    fis'8[ r fis] fis[ r fis] | \acciaccatura g8 fis( eis fis) a4( fis8) |
    cis8-.\f d-. dis-. e4.->~ | e8 eis-. fis-. g4.->~ |
    g8 r r cis,4.->( 
  }
  \alternative {
    { d4) r8 r4 r8 | }
    { d8\repeatTie d,\< e fis g a |  }
  }
  %mark B
  \repeat volta 2 {
    b4.->\ff b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 c4.->~ | c4 fis,8 a4 b8 |
    c4.-> c-> | c4-> c8 b4 b8 | g'8[ r fis] fis4.->~ | fis4 fis,8 a4 c8 |
    fis8[ r e] e4.->~ | e4 fis,8 a4 c8 | e8[ r ees] d4.->~ | d8 d, e fis g a |
    %mark C
    b4.-> b-> | b4 b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b8 g a b c d | e2.->~ | e4 e8 dis4 e8 |
    g4.-> cis,-> | fis4.-> e-> | e8 r r d4.->~ | d4 d8 d4 d8 |
    cis2.( | c!2.) | b2.~ |
  }
  \alternative {
    { b8 d,\f\< e fis g a\! |  }
    { b4\repeatTie g,8\p(^"Soli" fis4 g8) }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    c4 g'8( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    r4 g8( fis4 g8) | e'4.( c) | a4. e'4( d8) | d4 g,,8( fis4 g8) |
    c4 g'8( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    a4.( f') | e4.( c) | d4( a8) b4( g8) |
  }
  \alternative {
    { c4 g,8\p^"Soli"( fis4 g8) |  }
    { c'8 e8-.\< e-. e-. e-. e-. | }
  }
  
  %mark D
  \repeat volta 2 {
    d8\ff r r r d d | c8 r r r c c |
    b8 r r r4 r8 | r8 e e e e e |
    d8 r r r d d | c8 r r r c c |
    b8 r r r4 r8 | r8 g' g g g g |
    f8 r r r f f | e8 r r r e e |
    d8 r r r4 r8 | r8 g g g g g |
    f8 r r r f f | e8 r r r e e |
    d8 r r r4 r8 | R2. |

    %mark E
    r4 g,8\fff( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    r4 g8( fis4 g8) | e'4.-> c-> | a4.-> e'4->( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    a4.-> f'-> | e4.-> c-> | f2.( |
  }
  \alternative {
    { e8) e-.\f\< e-. e-. e-. e-.\! | }
    { e4\repeatTie e16 e e4 r8 |  }
  }
  
}

clarinetThree = \relative c'' {
  \key g \major
  
  g4.->\ff b-> | c4.-> cis4.-> |
  d8 r r fis,4.->( | g8) r r r4 r8 |
  
  %mark A
  \repeat volta 2 {
    g4.\p( fis | e4. d | c4. b | a4.~ a4) r8
    a'8[ r a] a[ r a] |  a8( gis a) d4( c8) |
    b8[ r b]( c[) r c]( | d4.~) d8 r r  |
    g,4.( fis | e4. d) | 
    a'8[ r a] a[ r a] | a( gis a) fis'4( d8) |
    a8-.[\f r a-.] a4.->~ | a8[ r a-.] a4.->~ |
    a8 r r a4.->~ 
  }
  \alternative {
    { a4 r8 r4 r8 | }
    { a8\repeatTie d,\< e fis g a |  }
  }
  %mark B
  \repeat volta 2 {
    b4.->\ff b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 c4.->~ | c4 fis,8 a4 b8 |
    c4.-> c-> | c4-> c8 b4 b8 | d8[ r d] d4.->~ | d4 fis,8 a4 c8 |
    c8[ r c] c4.->~ | c4 fis,8 a4 c8 | e8[ r ees] d4.->~ | d8 d, e fis g a |
    %mark C
    b4.-> b-> | b4 b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | f2.( | e2.)~ | e4 e'8 dis4 e8 |
    g,2.~ | g2. | g8 r r g4.->~ | g4 b8 b4 b8 |
    e,2.( | fis2.) | g2.~ |
  }
  \alternative {
    { g8 d\f\< e fis g a\! |  }
    { g4\repeatTie g,8\p(^"Soli" fis4 g8) }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    c4 g'8( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    r4 g8( fis4 g8) | e'4.( c) | a4. e'4( d8) | d4 g,,8( fis4 g8) |
    c4 g'8( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    a4.( f') | e4.( c) | d4( a8) b4( g8) |
  }
  \alternative {
    { c4 g,8\p^"Soli"( fis4 g8) |  }
    { c'8 e8-.\< e-. e-. e-. e-. | }
  }
  
  %mark D
  \repeat volta 2 {
    b8\ff r r r b b | a8 r r r a a |
    gis8 r r r4 r8 | r8 e' e e e e |
    b8 r r r b b | a8 r r r a a |
    gis8 r r r4 r8 | r8 g' g g g g |
    d8 r r r d d | c8 r r r c c |
    b8 r r r4 r8 | r8 g' g g g g |
    d8 r r r d d | c8 r r r c c |
    b8 r r r4 r8 | R2. |

    %mark E
    r4 g8\fff( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    r4 g8( fis4 g8) | e'4.-> c-> | a4.-> e'4->( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    a4.-> f'-> | e4.-> c-> | b2.( |
  }
  \alternative {
    { c8) e-.\f\< e-. e-. e-. e-.\! | }
    { c4\repeatTie c16 c c4 r8 |  }
  }
  
}


saxTenor = \relative c'' {
  \key g \major

  b4.->\ff d-> | c4.-> e->( | d8) r r c4.->( | b8) r r r4 r8 |
  %mark A
  \repeat volta 2 {
    g'4.\p( fis | e4. d | c4. b | a4.~ a4) r8 |
    c2.~ | c2. | b2.~ | b4 r8 r4 r8 |
    g'4.( fis | e4. d) | d2.~ | d2. |
    a4.~\f a4 aes8 | g4.~ g4 fis8 | e8 r r a4.->~ | 
  }
  \alternative {
    { a8 r r r4 r8 | }
    { a8\repeatTie r r r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    g4.->\ff fis-> | e4.-> d-> | b'8 r r b4.->~ | b8 d, e fis g a |
    g4.-> fis-> | e4.-> d-> | c'8 r r c4.->~ | c4 c8 c4 c8 |
    a4.-> g-> | fis4.-> e-> | c'8 r r c4.->~ | c4 c8 c4 c8 |
    c8 r r c4.->~ | c4 c8 c4 c8 | b8 r r b4.->~ | b4 b8 b4 b8 |
    %mark C
    g4.-> fis-> | e4.-> d-> | b'8 r r b4.->~ | b8 d, e fis g a |
    g4.-> fis-> | e4.-> d-> | r8 e fis g a b | c2.-> |
    e2.-> | e2.-> | d8 r r d4.->~ | d4 d8 d4 d8 |
    cis2.( | c!2.) | b2.~ | 
  }
  \alternative {
    { b4 r8 r4 r8 | }
    { b4\repeatTie g8\p( fis!4 g8) | }
  }

  %TRIO
  \key c \major
  \repeat volta 2 {
    e'4 r8 r4 r8 | r4 g,8 c4 e8 | f4. c4( d8) | e4 g,8( fis4 g8) |
    e'4 r8 r4 r8 | r4 g,8 c4 e8 | d4.( c | b4) g8( fis4 g8) |
    e'4 r8 r4 r8 | r4 g,8 c4 e8 | f4. c4( d8) | e4 d8 c b bes |
    a4.( f') | e4.( c) | d4( a8) b4( g8) | 
  }
  \alternative {
    { c4 g8\p( fis4 g8) | }
    { c4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 gis\ff a b4.->~ | b8 a b c4.->~ | c8 b c d4 c8 | b4 r8 r4 r8 |
    r8 gis a b4.->~ | b8 a b c4.->~ | c8 b c d4 c8 | b4 r8 r4 r8 |
    r8 b c d4.->~ | d8 c d e4.->~ | e8 d e f4 e8 | d4 r 8 r4 r8 |
    r8 b c d4.->~ | d8 c d e4.->~ | e8 d e f4 e8 | d4 g,8\fff( fis4 g8) |
    %mark E
    e'2. | g4.-> e-> | f4.->( c4 d8) | e4 g,8( fis4 g8) |
    e'2. | g4.-> e-> | d4.-> c-> | b4 g8( fis4 g8) |
    e'2. | g4.-> e-> | f4.-> c4->( d8) | e2. |
    a,4.-> f'-> | e4.-> c-> | b2.( |
  }
  \alternative {
    { c4) r8 r4 r8 | }
    { c4\repeatTie e16 e e4 r8 | }
  }
  
}

baritoneSax = \relative c' {

}

cornetSolo = \relative c'' {
  \key g \major
  
  b4.->\ff d-> | c4.-> fis4->( e8) |
  d8 r r b'4->( a8) | g4 r8 \acciaccatura { d16 e } d8\p( cis c) |
  %mark A
  \repeat volta 2 {
    b8[ r b] b[ r b] | \acciaccatura c8 b8( ais b) e4( b8) |
    a8[ r a]( b[) r b]( | c4.~) c4 r8 |
    a8[ r a] a[ r a] | \acciaccatura b8 a8( gis a) d4( c8) |
    b8[ r b]( c[) r c]( | d4.~)( d8 cis c) |
    b8[ r b] b[ r b] | \acciaccatura c8 b8( ais b) d4( b8) |
    a8[ r a] a[ r a] | \acciaccatura b8 a8( gis a) fis'4( d8) |
    cis8-.\f d-. dis-. e4.->~ | e8 eis-. fis-. g4.->~ |
    g8 r r cis,4.->( |
  }
  \alternative {
    { d8) r r \acciaccatura { d16 e } d8\p( cis c) | }
    { d8\repeatTie d,\< e fis g a | }
  }
  %mark B
  \repeat volta 2 {
    b4.->\ff b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 c4.->~ | c4 fis,8 a4 b8 |
    c4.-> c-> | c4-> c8 b4 c8 | g'8[ r fis] fis4.->~ | fis4 fis,8 a4 c8 |
    fis8[ r e] e4.->~ | e4 fis,8 a4 c8 | e8[ r ees] d4.->~ | d8 d, e fis g a |
    %mark C
    b4.-> b-> | b4-> b8 ais4 b8 | e4 d8 b4.->~ | b8 d, e fis g a |
    b4.-> b-> | b8 g a b c d | e2.~ | e4 e8 dis4 e8 |
    g4.-> cis,-> | fis4.-> e-> | e8 r r d4.->~ | d4 g,8 a4 c8 |
    b4.->( a) | b4.->~ b4 a8 | g2.( |
  }
  \alternative {
    { g8) d\f\< e fis g a\! | }
    { g4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    r4 g8\p( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    r4 g8( fis4 g8) | e'4.( c) | a4. e'4( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.( c) | a4.( c) | g2. |
    a4.( f') | e4.( c) | d4( a8) b4( g8) |
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c8 e-.\< e-. e-. e-. e-. | }
  }
  %mark D
  \repeat volta 2 {
    e8\ff r r r e e | e8 r r r e e | e8 r r r4 r8 | r8 e e e e e |
    e8 r r r e e | e8 r r r e e | e8 r r r4 r8 | r8 g g g g g |
    g8 r r r g g | g8 r r r g g | g8 r r r4 r8 | r8 g g g g g |
    g8 r r r g g | g8 r r r g g | g8 r r r4 r8 | R2. |
    %mark E
    r4 g,8\fff( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    r4 g8( fis4 g8) | e'4.-> c-> | a4.-> e'4( d8) | d4 r8 r4 r8 |
    r4 g,8( fis4 g8) | e'4.-> c-> | a4.-> c-> | g2.-> |
    a4.-> f'-> | e4.-> c-> | d4( a8) b4( g8) |
  }
  \alternative {
    { c8 e-.\f\< e-. e-. e-. e-. | }
    { c4\! c16 c c4 r8 | }
  }
}

cornetOne = \relative c'' {

}

cornetTwo = \relative c' {
  \key g \major
  d4.->\ff e-> | e4.-> fis->~ | fis8 r r fis4.->( | g8) r r r4 r8 |
  %mark A
  \repeat volta 2 {
    g4.\p(^"Soli" fis | e4. d | c4. b | a4.~ a4) r8 |
    fis'2.~ | fis2. | g2.~ | g4 r8 r4 r8 |
    g4.( fis | e4. d) | fis2.~ | fis2. |
    a4\f a8 a4.->~ | a4 a8 a4.->~ | a8 r r g4.->( |
  }
  \alternative {
    { fis8) r r r4 r8 | }
    { fis8\repeatTie r r r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    r8 g\ff g r g g | r8 g g r8 g g | g8 r r g4.->~ | g4 g8 g4 g8 |
    r8 g g r g g | r8 g g r8 g g | fis8 r r fis4.->~ | fis4 fis8 fis4 fis8 |
    r8 fis fis r fis fis | r8 fis fis r fis fis | a8 r r a4.->~ | a4 a8 a4 a8 |
    a8 r r a4.->~ | a4 a8 a4 a8 | g8 r r g4.->~ | g4 r8 r4 r8 |
    r8 g g r g g | r8 g g r8 g g | g8 r r g4.->~ | g4 g8 g4 g8 |
    r8 g g r g g | r8 f f r8 f f | e2.->~ | e4 e8 e4 e8 |
    g2.-> | g2.-> | g8 r r g4.->~ | g4 g8 g4 g8 |
    g2.( | fis2.) | d2.~ |
  }
  \alternative {
    { d4 r8 r4 r8 | }
    { d4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    r4 e8\p( dis4 e8) | g4.( e) | f4. a4( f8) | e2. |
    r4 e8( dis4 e8) | g4.( e) | fis2.( | f!4) r8 r4 r8 |
    r4 e8( dis4 e8) | g4.( e) | f4. a4( f8) e2. |
    f4.( a) | g4.( e) | f2.( |
  }
  \alternative {
    { e4) r8 r4 r8 | }
    { e8-.\repeatTie e-.\< e-. e-. e-. e-. | }
  }
  %mark D
  \repeat volta 2 {
    b'8\ff r r r b b | a8 r r r a a | gis8 r r r4 r8 | r8 e e e e e |
    b'8 r r r b b | a8 r r r a a | gis8 r r r4 r8 | r8 g g g g g |
    d'8 r r r d d | c8 r r r c c | b8 r r r4 r8 | r8 g g g g g |
    d'8 r r r d d | c8 r r r c c | b8 r r r4 r8 | R2. |
    %mark E
    r8 g\fff g r g g | r8 g g r g g | r8 a a r a a | r8 g g g g g |
    r8 g g r g g | r8 g g r g g | fis2.->( | f!8) f f f f f |
    r8 g g r g g | r8 g g r g g | r8 a a r a a | r8 g g g g g |
    f4.-> a-> | g4.-> e-> | d2.( |
  }
  \alternative {
    { c8) e\f\< e e e e | }
    { c4\!\repeatTie c16 c c4 r8 | }
  }
  
}

cornetThree = \relative c' {
  \key g \major
  d4.->\ff e-> | e4.-> fis->~ | fis8 r r d4.->~ | d8 r r r4 r8 |
  %mark A
  \repeat volta 2 {
    g4.\p(^"Soli" fis | e4. d | c4. b | a4.~ a4) r8 |
    d2.~ | d2. | d2.~ | d4 r8 r4 r8 |
    g4.( fis | e4. d) | fis2.~ | fis2. |
    a4\f a8 a4.->~ | a4 a8 a4.->~ | a8 r r e4.->( |
  }
  \alternative {
    { d8) r r r4 r8 | }
    { d8\repeatTie r r r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    r8 d\ff d r d d | r8 d d r8 d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    r8 d d r d d | r8 d d r8 d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    r8 d d r d d | r8 d d r d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    d8 r r d4.->~ | d4 d8 d4 d8 | d8 r r d4.->~ | d4 r8 r4 r8 |
    r8 d d r d d | r8 d d r8 d d | d8 r r d4.->~ | d4 d8 d4 d8 |
    r8 d d r d d | r8 f f r8 f f | e2.->~ | e4 e8 e4 e8 |
    g2.-> | g2.-> | g8 r r g4.->~ | g4 g8 g4 g8 |
    e2.( | d2.) | d2.~ |
  }
  \alternative {
    { d4 r8 r4 r8 | }
    { d4\repeatTie r8 r4 r8 | }
  }
  %TRIO
  \key c \major
  \repeat volta 2 {
    R2.*6 | d2.~\p | d4 r8 r4 r8 |
    R2.*6 | d2.(
  }
  \alternative {
    { c4) r8 r4 r8 | }
    { e8-.\repeatTie e-.\< e-. e-. e-. e-. | }
  }
  %mark D
  \repeat volta 2 {
    e8\ff r r r e e | e8 r r r e e | e8 r r r4 r8 | r8 e e e e e |
    e8 r r r e e | e8 r r r e e | e8 r r r4 r8 | r8 g g g g g |
    g8 r r r g g | g8 r r r g g | g8 r r r4 r8 | r8 g g g g g |
    g8 r r r g g | g8 r r r g g | g8 r r r4 r8 | R2. |
    %mark E
    r8 e\fff e r e e | r8 e e r e e | r8 f f r f f | r8 e e e e e |
    r8 e e r e e | r8 e e r e e | d2.->( | d8) d d d d d |
    r8 e e r e e | r8 e e r e e | r8 f f r f f | r8 e e e e e |
    f4.-> a-> | g4.-> e-> | d2.( |
  }
  \alternative {
    { c8) e\f\< e e e e | }
    { c4\!\repeatTie c16 c c4 r8 | }
  }
  
}

altoSax = \relative c' {

}

altoEbOne = \relative c'' {

}

altoEbTwoThree = \relative c' {

}

tromboneOneTreble = \relative c'' {

}

tromboneTwoTreble = \relative c' {

}

tromboneThree = \relative c, {

}
		    
baritoneTC = \relative c'' {
  \key g \major

  g4.->\ff e-> | a4.-> fis-> | b8 r r d,4.->( | g4) r8 r4 r8 |
  \repeat volta 2 {
    %mark A
    b8[\p r b] b[ r b] | \acciaccatura c8 b8( ais b) e4( b8) |
    a8[ r a]( b[) r b]( | c4.~) c4 r8 |
    a8[ r a] a[ r a] | \acciaccatura b8 a8( gis a) d4( c8) |
    b8[ r b]( c[) r c]( | d4.~) d4 r8 |
    b8[ r b] b[ r b] | \acciaccatura c8 b8( ais b) d4( b8) |
    a8[ r a] a[ r a] | \acciaccatura b8 a8( gis a) fis'4( d8) |
    a4.->~\f a4 gis8 | g4.->~ g4 fis8 | e8 r r cis'4.->( |
  }
  \alternative {
    { d8) r r r4 r8 | }
    { d8\repeatTie r r r4 r8 | }
  }
  \repeat volta 2 {
    %mark B
    g,4.->\ff fis-> | e4.-> d-> | e'4 d8 b4.->~ | b8 d, e fis g a |
    g4.-> fis-> | e4.-> d-> | e'4 d8 c4.->~ | c4 c8 c4 c8 |
    a4.-> g-> | fis4.-> e-> | g'8[ r fis] fis4.~ | fis4 fis,8 a4 c8 |
    fis8[ r e] e4.->~ | e4 fis,8 a4 c8 | e8[ r ees] d4.->~ | d4 r8 r4 r8 |
    %mark C
    g,4.-> fis-> | e4.-> d-> | e'4 d8 b4.->~ | b8 d, e fis g a |
    g4.-> fis-> | e4.-> d-> | r8 e fis g a b | c2.-> |
    g'4.-> cis,-> | fis4.-> e-> | e8 r r d4.->~ | d4 d,8 g4 b8 |
    e2.( | fis2. | g4) e,8 d4 b8 | 
  }
  \alternative {
    { g4 r8 r4 r8 | }
    { g4 g8\p(^"Solo" fis!4 g8) | }
  }
  
  %Trio
  \key c \major
  \repeat volta 2 {
    c4 r8 r4 r8 | r4 g'8 c4 e8 | f4. c4( d8) | e4 g,8( fis4 g8) |
    c,4 r8 r4 r8 | r4 g'8 c4 e8 | d4.( c) | b4 g8( fis4 g8) |
    c,4 r8 r4 r8 | r4 g'8 c4 e8 | f4. c4( d8) | e4-. d8-. c-. b-. bes-. |
    a4.( f') | e4.( c) | d4( a8) b4( g8) |
  }
  \alternative {
    { c4 g,8\p( fis4 g8) | }
    { c'4 r8 r4 r8 | }
  }
  %mark D
  \repeat volta 2 {
    r8 gis\ff a b4.->~ | b8 a b c4.->~ | c8 b c d4 c8 | b4 r8 r4 r8 |
    r8 gis a b4.->~ | b8 a b c4.->~ | c8 b c d4 c8 | b4 r8 r4 r8 |
    r8 b c d4.->~ | d8 c d e4.->~ | e8 d e f4 e8 | d4 r8 r4 r8 |
    r8 b c d4.->~ | d8 c d e4.->~ | e8 d e f4 e8 | d4 g,8\fff( fis4 g8) |
    %mark E
    c4 g8( fis4 g8) | e'4 g,8 c4 e8 | a,4.-> c-> | g4-> g8( fis4 g8) |
    c4 g8( fis4 g8) | e'4 g,8 c4 e8 | a,4.-> e'4->( d8) | d4 g,8( fis4 g8) |
    c4 g8( fis4 g8) | e'4 g,8 c4 e8 | a,4.-> c-> | g4.->~ g4 r8 |
    a4.-> f'-> | e4.-> c-> | d4( a8) b4( g8) |
  }
  \alternative {
    { c4 r8 r4 r8 | }
    { c4 c16 c c4 r8 | }
  }
  
}
		    
baritoneBC = \relative c, {
  
}

basses = \relative c, {

}

drumSnareBass = \drummode {
  \clef percussion

  << sn4.:32
     \\
     bd4.\ff >>
  
  << sn4.:32
     \\
     bd4. >> |
  << sn4.:32
     \\
     bd4. >>
  << sn4.:32
     \\
     bd4. >> |
  
  << sn8
     \\
     bd8 >>
  r r
  << { sn4.:32~ | sn8 }
     \\
     { bd4. | bd 8 } >>
  r r r4 r8
  %mark A
  \repeat volta 2 {
    \repeat percent 12 {
      << { sn4 sn8 sn4 sn8 | }
	 \\
	 { bd4\p r8 bd4 r8 | } >>
    }
    << { sn4 sn8 sn4.:32~ | sn4 sn8 sn4.:32~ | sn8 } 
       \\
       { bd4\f r8 r4 bd8 | bd4 r8 r4 bd8 | bd8 } >>
    r r
    << { sn4.:32->~ | } 
       \\
       { bd4. | } >>
  }
  \alternative {
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
  }
  %mark B
  \repeat volta 2 {
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4\ff r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 7 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    %mark C
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4\ff r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 4 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
  }
  \alternative {
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
  }
  %TRIO
  \repeat volta 2 {
    \repeat percent 15 {
      << { sn4 sn8 sn4 sn8 | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
  }
  \alternative {
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
    { << sn4
	 \\
	 bd4 >>
      r8 r4 r8 | }
  }
  %Mark D
  \repeat volta 2 {
    R2.*16 |
    %Mark E
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4\fff r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
    << { r8 sn sn sn4.:8 | }
       \\
       { bd4 r8 r4 r8 | } >>
    \repeat percent 3 {
      << { r8 sn sn r sn sn | }
	 \\
	 { bd4 r8 bd4 r8 | } >>
    }
  }
  \alternative {
    { << sn4 \\ bd4 >> r8 r4 r8 | }
    { << { sn4 sn16 sn sn4  }
	 \\
	 { bd4 r8 bd4 } >>
      r8 |
    }
  }
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
