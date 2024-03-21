\version "2.24.3"
\include "OldComrades.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Baritone TC"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "trombone"

    \clef treble
    << \rehearsalMarks 
       \baritoneTC >>
  }
  
  \layout { }
  \midi {
    \tempo 2 = 100
  }
}