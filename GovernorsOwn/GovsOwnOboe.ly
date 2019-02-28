\version "2.18.2"
\include "GovernorsOwn.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Oboe"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "oboe"

    \clef treble
    << \rehearsalMarks 
       \oboeOne >>
  }
  
  \layout { }
  \midi {
    \tempo 4 = 120
  }
}