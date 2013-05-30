\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")  
}

\header {
  instrument = "Solo & 1st Bb Clarinet"
}

\score {
  \new Staff { 
    \set Staff.midiInstrument = "clarinet" 
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    <<
      \rehearsalMarks
      \clarinetInBbSOne
    >>
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

