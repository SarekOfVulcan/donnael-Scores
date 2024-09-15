\version "2.24.3"
\include "OldComrades.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Oboe"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "oboe"

    \clef treble
    << \rehearsalMarks 
       \oboeOne >>
  }
  
  \layout { }
  \midi {
    \tempo 2 = 100
  }
}