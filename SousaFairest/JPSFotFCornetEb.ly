\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Eb Cornet"
}

\score {
  \new Staff { 
    \set Staff.midiInstrument = "trumpet"
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    <<
      \rehearsalMarks
      \cornetInEb
    >>
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

