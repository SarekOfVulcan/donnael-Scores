\version "2.18.2"
\include "10thRegRBHall.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f

  myStaffSize = #24
  #(define fonts
    (make-pango-font-tree "Cambria"
     "Segoe UI"
     "Consolas"
     (/ myStaffSize 20)))
}
#(set-global-staff-size 24)

\header {
  instrument = "Solo Cornet"
  tagline = ##f
}

\score {
  \new Staff  { 
    \set Score.skipBars = ##t
    \set Staff.midiInstrument = "trumpet"

    \time 6/8
    \clef treble

    << \rehearsalMarks 
       \cornetSolo >>
  }
  
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 4)
    }
 }
}
