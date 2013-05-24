\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Flute in C"
}

\score {
  \new Staff { 
    \set Staff.midiInstrument = "flute" 
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \time 2/4
    \mark "Marziale"
    \fluteInC
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}