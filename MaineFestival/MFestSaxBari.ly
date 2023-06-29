\version "2.24.1"
\include "MHAMarch.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Baritone Saxophone"
}

\score {
  \new Staff  { 
    \clef treble

    << \rehearsalMarks 
       \saxBaritone >>
  }
  
  \layout { }
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "baritone sax"

    \clef treble

    << \rehearsalMarks 
       \transpose ees c,, \saxBaritone >>
  }
  
  \midi {
    \tempo 4. = 120
  }  
}