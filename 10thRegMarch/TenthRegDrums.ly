\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Drums"
  tagline = ##f
}

\score {
  \new DrumStaff  { 
    \set Score.skipBars = ##t
    \set countPercentRepeats = ##t

    \set Staff.midiInstrument = "synth drum" 
    \time 6/8
    \clef treble
    
    << \rehearsalMarks 
       \drumSnareBass >>
  }
  
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 4)
    }
 }
}
