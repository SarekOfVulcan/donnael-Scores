\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Bb Tenor Saxophone"
}

\score {
  \new Staff { 
    \set Staff.midiInstrument = "tenor sax"
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    \tenorSaxophoneInBb
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

