\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Horn 2"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "french horn"

    \clef treble
    << \rehearsalMarks 
       \hornTwo >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}