\version "2.24.0"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Trumpet 1"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "trumpet"

    \clef treble
    << \rehearsalMarks 
       \trumpetOne >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}