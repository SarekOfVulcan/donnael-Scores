\version "2.18.2"
\include "changePitch.ly"

\pointAndClickOff

\header {
  title = "The Governor's Own"
  Subtitle = "March"
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
  \mark \markup { \bold "TRIO" }
  \repeat volta 2 {
    s2*16 |
    \mark \markup { \circle "C" }
    s2*15 |
   }
  \alternative {
    {s2 | }
    {s2 | }
  }
  \mark \markup { \circle "D" }
    s2*12 | \bar "|." }
  }
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

