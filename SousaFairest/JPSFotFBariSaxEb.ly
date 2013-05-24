\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Eb Baritone Saxophone"
}

\score {
  \new Staff { 
    \set Staff.midiInstrument = "baritone sax"
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    \baritoneSaxophoneInEb
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

