\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Cornet 3"
  tagline = ##f
}

\score {
  \new Staff  { 
    \override MultiMeasureRest.expand-limit = #2
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = "trumpet"

    \time 6/8
    \clef treble

    << \rehearsalMarks 
       \cornetThree >>
  }
  
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 4)
    }
 }
}
