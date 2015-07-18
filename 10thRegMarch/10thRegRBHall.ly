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