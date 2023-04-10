\version "2.24.0"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Bassoon"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "bassoon"

    \clef bass
    << \rehearsalMarks 
       \bassoonOne >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}