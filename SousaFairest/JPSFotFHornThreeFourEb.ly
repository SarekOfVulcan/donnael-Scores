\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "3rd & 4th Eb Horns"
}

\score {
  \new Staff \with { printPartCombineTexts = ##f } { 
    \set Staff.midiInstrument = "french horn"
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    <<
      \rehearsalMarks
      \partcombine \hornThreeInEb \hornFourInEb
    >>
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

