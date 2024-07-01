\version "2.24.3"
\include "OldComrades.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Horn 3"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "french horn"

    \clef treble
    << \rehearsalMarks 
       \hornThree >>
  }
  
  \layout { }
  \midi {
    \tempo 2 = 100
  }
}