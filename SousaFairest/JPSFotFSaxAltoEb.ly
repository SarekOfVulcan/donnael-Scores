\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Eb Alto Saxophone"
}

\score {
  \new Staff { 
    \set Staff.midiInstrument = "alto sax"
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    \altoSaxophoneInEb
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

