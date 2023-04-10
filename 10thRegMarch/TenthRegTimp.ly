\version "2.24.0"
\include "TenthRegiment.ly"

\paper {
  #(set-paper-size "letter")
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Timpani in C-F"
}

\score {
  \new Staff  { 

    \clef bass
    << \rehearsalMarks 
       \percTimp >>
  }
  
  \layout { }
}