\version "2.18.2"
\include "TenthRegiment.ly"

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