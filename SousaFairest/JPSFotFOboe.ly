#(ly:set-option 'point-and-click #f)
\version "2.14.0"
\include "JPSFotF.ly"

#(set-global-staff-size 15)
\paper {
  obsolete-between-system-padding = #1  system-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)  score-system-spacing #'padding = #(/ obsolete-between-system-padding staff-space)
}

\header {
  title = "The Fairest of the Fair"
  subtitle = "March"
  composer = "John Philip Sousa"
  mutopiacomposer = "SousaJP"
  instrument = "Oboe"
  date = "1908"
  source = "John Church, 1908"
  style = "March"
  copyright = "Public Domain"
  maintainer = "Garrett Fitzgerald"
  maintainerEmail = "gfitzger@nyx.net"
}

\score {
  \new Staff \with { printPartCombineTexts = ##f } { 
    <<
      \set Staff.midiInstrument = "oboe" 
      \once \override Score.RehearsalMark #'self-alignment-X = #-1
      \clef treble
      \time 2/4 
      \mark "Marziale"
      \partcombine \oboeOne \oboeTwo
    >>
  }
  
  \layout {}
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }
}