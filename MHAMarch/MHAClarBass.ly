\version "2.24.1"
\include "MHAMarch.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Bass Clarinet"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "clarinet"

    \clef treble
    << \rehearsalMarks 
       \transpose bes c'' \basses >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}