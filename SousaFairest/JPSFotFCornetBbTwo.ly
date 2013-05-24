#(ly:set-option 'point-and-click #f)
\version "2.16.0"
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
  instrument = "1st Bb Cornet"
  date = "1908"
  source = "John Church, 1908"
  style = "March"
  copyright = "Public Domain"
  maintainer = "Garrett Fitzgerald"
  maintainerEmail = "gfitzger@nyx.net"
}



\score {
  \new Staff { 
    \set Staff.midiInstrument = "trumpet"
    \override Score.RehearsalMark #'break-align-symbol = #'time-signature
    \mark "Marziale"
    \cornetInBbTwo
  }
  
  \layout {}
  \midi {
    \tempo 4 = 120
  }
}

