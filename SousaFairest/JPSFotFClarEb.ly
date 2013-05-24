\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Eb Clarinet"
}

\score {
  \new Staff { 
    \set Staff.midiInstrument = "clarinet" 
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    \clarinetInEb
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

