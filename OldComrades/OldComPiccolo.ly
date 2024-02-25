\version "2.24.1"
\include "MaineFestival.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = \markup { "Piccolo in D" \flat }
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "flute"

    \clef treble
    
    << \rehearsalMarks 
       %\transpose c des 
       \piccOne >>
  }
  
  \layout { }
  \midi {
    \tempo 2 = 120
  }
}