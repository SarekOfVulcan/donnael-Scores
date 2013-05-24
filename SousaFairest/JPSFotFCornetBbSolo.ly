\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Solo Bb Cornet"
}

\score {
  \new Staff { 
    \set Staff.midiInstrument = "trumpet"
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    \cornetInBbSolo
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

