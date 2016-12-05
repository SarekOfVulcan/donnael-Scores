\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Cornet 1"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "trumpet"

    \clef treble
    << \rehearsalMarks 
       \cornetOne >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}