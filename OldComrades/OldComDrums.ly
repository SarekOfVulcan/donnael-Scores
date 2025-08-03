\version "2.24.3"
\include "OldComrades.ly"

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
    \tempo 2 = 100
  }
}