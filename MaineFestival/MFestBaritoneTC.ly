\version "2.24.1"
\include "MaineFestival.ly"

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
    \tempo 2 = 120
  }
}