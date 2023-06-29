\version "2.24.1"
\include "MHAMarch.ly"

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
    \tempo 4. = 120
  }
}