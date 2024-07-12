\version "2.24.3"
\include "OldComrades.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Flute 1 and Piccolo"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "flute"

    \clef treble
    << \rehearsalMarks 
        \fluteOne >>
  }
  
  \layout { }
  \midi {
    \tempo 2 = 100
  }
}