\version "2.24.3"
\include "OldComrades.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Euphonium"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "trombone"

    \clef bass 
    << \rehearsalMarks 
       \transpose c bes,, \baritoneTC >>
  }
  
  \layout { }
  \midi {
    \tempo 2 = 100
  }
}