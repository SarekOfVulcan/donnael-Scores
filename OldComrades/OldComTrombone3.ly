\version "2.24.1"
\include "MHAMarch.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Trombone 3"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "trombone"

    \clef bass
    << \rehearsalMarks 
       \tromboneThree >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}