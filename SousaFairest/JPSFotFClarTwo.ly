\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "2nd & 3rd Bb Clarinets"
}

\score {
  \new Staff \with { printPartCombineTexts = ##f } {  
    <<
      \set Staff.midiInstrument = "clarinet" 
      \override Score.RehearsalMark #'break-align-symbol = #'time-signature
      \mark "Marziale"
      <<
	\rehearsalMarks
        \partcombine \clarinetInBbTwo \clarinetInBbThree
      >>
    >>
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

