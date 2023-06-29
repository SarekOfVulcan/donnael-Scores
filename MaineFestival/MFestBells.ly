\version "2.24.1"
\include "MHAMarch.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Bells"
}

\score {
  \new Staff  { 

    \clef treble
    << \rehearsalMarks 
       \percBells >>
  }
  
  \layout { }
}