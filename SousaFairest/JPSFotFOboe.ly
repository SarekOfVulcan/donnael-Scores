\version "2.16.2"
\include "JPSFotF.ly"

\paper {
  #(set-paper-size "letter")
}

\header {
  instrument = "Oboe"
}

\score {
  \new Staff \with { printPartCombineTexts = ##f } { 
    <<
      \set Staff.midiInstrument = "oboe" 
      \once \override Score.RehearsalMark #'self-alignment-X = #-1
      \clef treble
      \time 2/4 
      \mark "Marziale"
      <<
	\rehearsalMarks
        \partcombine \oboeOne \oboeTwo
      >>
    >>
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}