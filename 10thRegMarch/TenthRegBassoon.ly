\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Bassoon"
  tagline = ##f
}

\score {
  \new Staff  { 
    \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1

    \set Staff.midiInstrument = "bassoon"

    \time 6/8
    \clef bass
    \tempo 4.=120
    
    << \rehearsalMarks 
       \bassoonOne >>
  }
  
  \layout { }
  \midi { }
}
