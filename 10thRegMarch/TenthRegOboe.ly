\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Oboe"
  tagline = ##f
}

\score {
  \new Staff  { 
    \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1

    \set Staff.midiInstrument = "oboe"

    \time 6/8
    \clef treble
    \tempo 4.=120
    
    << \rehearsalMarks 
       \oboeOne >>
  }
  
  \layout { }
  \midi { }
}
