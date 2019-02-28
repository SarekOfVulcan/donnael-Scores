\version "2.18.2"
\include "GovernorsOwn.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Trombone 1"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "trombone"

    \clef bass
    
    << \rehearsalMarks 
       \tromboneOne >>
  }
  
  \layout { }
  \midi {
    \tempo 4 = 120
  }
}