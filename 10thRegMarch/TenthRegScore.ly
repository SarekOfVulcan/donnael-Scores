\version "2.18.2"

\paper {
  #(set-paper-size "legal")

}

\include "TenthRegiment.ly"

\score {
  <<
    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Flute 1 (Picc)"
      \set Staff.shortInstrumentName = "Fl 1"
      
      << \rehearsalMarks
	 \keepWithTag #'fluteOne \fluteOne >>
    }
    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Flute 2"
      \set Staff.shortInstrumentName = "Fl 2"
      
      << \rehearsalMarks
	 \fluteTwo >>
    }

    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Eb Clarinet"
      \set Staff.shortInstrumentName = "Eb Cl"
      
      << \rehearsalMarks
	 \transpose ees c \keepWithTag #'clarEb \fluteOne >>
    }
    
    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Clarinet 1"
      \set Staff.shortInstrumentName = "Clar 1"

      \clarinetOne
    }

    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Clarinet 2"
      \set Staff.shortInstrumentName = "Clar 2"

      \clarinetTwo
    }

    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Clarinet 3"
      \set Staff.shortInstrumentName = "Clar 3"

      \clarinetThree
    }

    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Tenor Sax"
      \set Staff.shortInstrumentName = "T Sax"

      \saxTenor
    }

    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Trumpet 1"
      \set Staff.shortInstrumentName = "Tr 1"

      \trumpetOne
    }

    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Trumpet 2"
      \set Staff.shortInstrumentName = "Tr 2"

      \trumpetTwo
    }

    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Solo Cornet"
      \set Staff.shortInstrumentName = "Solo Cor"

      \cornetSolo
    }

    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Cornet 1"
      \set Staff.shortInstrumentName = "Cor 1"

      \cornetOne
    }

    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Cornet 2"
      \set Staff.shortInstrumentName = "Cor 2"
      
      \cornetTwo
    }
    
    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Cornet 3"
      \set Staff.shortInstrumentName = "Cor 3"
      
      \cornetThree
    }
    
    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Baritone"
      \set Staff.shortInstrumentName = "Bari"

      \baritoneTC
    }

    \new DrumStaff  { 
      \set countPercentRepeats = ##t
      \set repeatCountVisibility = #(every-nth-repeat-count-visible 4)
      \set Score.skipBars = ##t
      \set Staff.instrumentName = "Drums"
      \set Staff.shortInstrumentName = "Drums"
      
      \drumSnareBass
    }

  >>

  \layout {
    short-indent = 1.5\cm
  }
}