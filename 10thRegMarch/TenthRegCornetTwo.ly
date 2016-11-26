\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Cornet 2"
  tagline = ##f
}

\score {
  \new Staff  { 
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = "trumpet"

    \time 6/8
    \clef treble

    << \rehearsalMarks 
       \cornetTwo >>
  }
  
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 4)
    }
 }
}
