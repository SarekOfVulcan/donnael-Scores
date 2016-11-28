\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Baritone Saxophone"
  tagline = ##f
}

\score {
  \new Staff  { 
    \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1

    \time 6/8
    \clef treble

    << \rehearsalMarks 
       \saxBaritone >>
  }
  
  \layout { }
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "baritone sax"

    \time 6/8
    \clef treble
    \tempo 4.=120

    << \rehearsalMarks 
       \transpose ees c,, \saxBaritone >>
  }
  
  \midi { }
  
}
