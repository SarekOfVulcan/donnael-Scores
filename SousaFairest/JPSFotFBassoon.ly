#(ly:set-option 'point-and-click #f)
\version "2.12.2"
\include "JPSFotF.ly"

#(set-global-staff-size 15)
\paper {
  between-system-padding = #1
}

\header {
  title = "The Fairest of the Fair"
  subtitle = "March"
  composer = "John Philip Sousa"
  mutopiacomposer = "SousaJP"
  instrument = "Bassoon"
  date = "1908"
  source = "John Church, 1908"
  style = "March"
  copyright = "Public Domain"
  maintainer = "Garrett Fitzgerald"
  maintainerEmail = "gfitzger@nyx.net"
  maintainerWeb = "http://blog.donnael.com/"
}

\score {
  \new Staff \with { printPartCombineTexts = ##f } { 
    <<
      \set Staff.midiInstrument = "bassoon" 
      \once \override Score.RehearsalMark #'self-alignment-X = #-1
      \mark "Marziale"
      \partcombine \bassoonOne \bassoonTwo
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