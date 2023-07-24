\version "2.24.1"
\include "MaineFestival.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "2nd B♭ Clarinet"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "clarinet"

    \clef treble
    << \rehearsalMarks 
       \clarinetTwo >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}