\version "2.24.1"
\include "OldComrades.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Horn 4"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "french horn"

    \clef treble
    << \rehearsalMarks 
       \hornFour >>
  }
  
  \layout { }
  \midi {
    \tempo 2 = 100
  }
}