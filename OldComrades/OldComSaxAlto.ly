\version "2.24.3"
\include "OldComrades.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Alto Saxophone"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "alto sax"

    \clef treble
    << \rehearsalMarks 
       \saxAlto >>
  }
  
  \layout { }
  \midi {
    \tempo 2 = 100
  }
}