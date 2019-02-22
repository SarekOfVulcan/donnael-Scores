\version "2.18.2"
\include "GovernorsOwn.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Drums"
}

\score {
  \new DrumStaff  { 
    \set Staff.midiInstrument = "synth drum" 
    
    << \rehearsalMarks 
       \drumSnareBass >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}