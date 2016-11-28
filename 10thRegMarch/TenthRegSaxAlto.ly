\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Alto Saxophone"
  tagline = ##f
}

\score {
  \new Staff  { 
    \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1

    \set Staff.midiInstrument = "alto sax"

    \time 6/8
    \clef treble

    << \rehearsalMarks 
       \saxAlto >>
  }
  
  \layout { }
  \midi {
    \tempo 4.=120
  }
}
