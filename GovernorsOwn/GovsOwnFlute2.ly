\version "2.18.2"
\include "GovernorsOwn.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Flute 2"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "flute"

    \clef treble
    << \rehearsalMarks 
       \fluteTwo >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}