\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Bassoon"
}

\score {
  \new Staff \with { printPartCombineTexts = ##f } { 
    <<
      \set Staff.midiInstrument = "bassoon" 
      \once \override Score.RehearsalMark #'self-alignment-X = #-1
      \mark "Marziale"
	  <<
	    \rehearsalMarks
        \partcombine \bassoonOne \bassoonTwo
      >>
    >>
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}