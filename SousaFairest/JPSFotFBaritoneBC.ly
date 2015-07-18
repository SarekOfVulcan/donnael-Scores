\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Euphonium"
}

\score {
  \new Staff \with { printPartCombineTexts = ##f } { 
    \set Staff.midiInstrument = "french horn"
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    \clef bass
    <<
      \rehearsalMarks
      \transpose c bes,, \baritoneTC
    >>
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

