\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Soprano Saxophone"
}

\score {
  \new Staff { 
    \set Staff.midiInstrument = "soprano sax" 
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    <<
      \rehearsalMarks
      \sopranoSax
    >>
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

