\version "2.18.2"
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