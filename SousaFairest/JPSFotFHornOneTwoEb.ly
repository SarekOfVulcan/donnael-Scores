\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "1st & 2nd Eb Horns"
}

\score {
  \new Staff { 
    \set Staff.midiInstrument = "french horn"
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    <<
      \rehearsalMarks
      \partcombine \hornOneInEb \hornTwoInEb
    >>
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

