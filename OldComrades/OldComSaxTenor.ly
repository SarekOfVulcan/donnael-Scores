\version "2.24.3"
\include "OldComrades.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Tenor Saxophone"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "tenor sax"

    \clef treble
    << \rehearsalMarks 
       \saxTenor >>
  }
  
  \layout { }
  \midi {
    \tempo 2 = 100
  }
}