\version "2.24.1"
\include "MHAMarch.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Basses"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "tuba"

    \clef bass
    << \rehearsalMarks 
       \basses >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}