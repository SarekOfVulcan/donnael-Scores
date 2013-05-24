\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Piccolo in Db"
}

\score {
  \new Staff { 
    \set Staff.midiInstrument = "piccolo" 
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    \piccoloInDb
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}