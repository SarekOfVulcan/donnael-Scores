\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Horn 4"
  tagline = ##f
}

\score {
  \new Staff  { 
    \set Score.skipBars = ##t
    \override MultiMeasureRest.expand-limit = #1

    \set Staff.midiInstrument = "french horn"

    \time 6/8
    \clef treble
    \set countPercentRepeats = ##t
    \set repeatCountVisibility = #(every-nth-repeat-count-visible 4)
    << \rehearsalMarks 
       \hornFour >>
  }
  
  \layout { }
  \midi { }
}
