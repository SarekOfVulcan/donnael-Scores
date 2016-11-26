\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Baritone TC"
  tagline = ##f
}

\score {
  \new Staff  { 
    \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1

    \set Staff.midiInstrument = "trombone"

    \time 6/8
    \clef treble

    << \rehearsalMarks 
       \baritoneTC >>
  }
  
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 4)
    }
 }
}
