\version "2.18.2"
\include "GovernorsOwn.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Basses"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "tuba"

    \clef bass
    << \rehearsalMarks 
       \basses >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}