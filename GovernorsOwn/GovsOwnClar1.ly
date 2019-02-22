\version "2.18.2"
\include "GovernorsOwn.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "1st B♭ Clarinet"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "clarinet"

    \clef treble
    << \rehearsalMarks 
       \clarinetOne >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}