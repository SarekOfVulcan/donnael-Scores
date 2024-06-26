\version "2.24.3"

\paper {
  #(set-paper-size "letter")
}

\include "OldComrades.ly"

\score {
  <<
    \new Staff  {
      \unfoldRepeats      
      \rehearsalMarks
    }
    
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "flute"
      \set Staff.instrumentName = "Flute 1"
      \set Staff.shortInstrumentName = "Fl 1"
      \tempo 2=100
      \unfoldRepeats      
      \keepWithTag #'fluteOne \transpose c des \piccOne
    }
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "clarinet"
      \set Staff.instrumentName = "Clarinet 1"
      \set Staff.shortInstrumentName = "Clar 1"
      \unfoldRepeats      
      \transpose c bes, \clarinetOne
    }
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "clarinet"
      \set Staff.instrumentName = "Clarinet 2"
      \set Staff.shortInstrumentName = "Clar 2"
      \unfoldRepeats      
      \transpose c bes, \clarinetTwo
    }
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "clarinet"
      \set Staff.instrumentName = "Clarinet 3"
      \set Staff.shortInstrumentName = "Clar 3"
      \unfoldRepeats      
      \transpose c bes, \clarinetThree
    }
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "clarinet"
      \set Staff.instrumentName = "Bass Clarinet"
      \set Staff.shortInstrumentName = "B. Cl"
      \unfoldRepeats      
      \transpose c bes,, \clarinetBass
    }
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "tenor sax"
      \set Staff.instrumentName = "Tenor Sax"
      \set Staff.shortInstrumentName = "Ten Sax"
      \unfoldRepeats      
      \transpose c bes,, \saxTenor
    }
    
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "trumpet"
      \set Staff.instrumentName = "Solo Cornet"
      \set Staff.shortInstrumentName = "Corn Solo"
      \unfoldRepeats      
      \transpose c bes, \cornetSolo
    }
    
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "trumpet"
      \set Staff.instrumentName = "Cornet 1"
      \set Staff.shortInstrumentName = "Corn 1"
      \unfoldRepeats      
      \transpose c bes, \cornetOne
    }
    
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "trumpet"
      \set Staff.instrumentName = "Cornet 2"
      \set Staff.shortInstrumentName = "Corn 2"
      \unfoldRepeats      
      \transpose c bes, \cornetTwo
    }
    
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "french horn"
      \set Staff.instrumentName = "Horn 1"
      \set Staff.shortInstrumentName = "Horn 1"
      \unfoldRepeats      
      \transpose c f, \hornOne
    }
    
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "french horn"
      \set Staff.instrumentName = "Horn 2"
      \set Staff.shortInstrumentName = "Horn 2"
      \unfoldRepeats      
      \transpose c f, \hornTwo
    }
    
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "french horn"
      \set Staff.instrumentName = "Horn 3"
      \set Staff.shortInstrumentName = "Horn 3"
      \unfoldRepeats      
      \transpose c f, \hornThree
    }
    
    \new Staff  {
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "french horn"
      \set Staff.instrumentName = "Horn 4"
      \set Staff.shortInstrumentName = "Horn 4"
      \unfoldRepeats      
      \transpose c f, \hornFour
    }
    
    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "trombone"
      \set Staff.instrumentName = "Baritone TC"
      \set Staff.shortInstrumentName = "Bari TC"
      \unfoldRepeats            
      \transpose c bes,, \baritoneTC
    }
    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "trombone"
      \set Staff.instrumentName = "Trombone 1"
      \set Staff.shortInstrumentName = "Trom 1"
      \unfoldRepeats            
      \tromboneOne
    }
    \new Staff  { 
      \set Score.skipBars = ##t
      \set Staff.midiInstrument = "trombone"
      \set Staff.instrumentName = "Trombone 2"
      \set Staff.shortInstrumentName = "Trom 2"
      \unfoldRepeats            
      \tromboneTwo
    }
  >>
  \layout { }
  \midi {
    \tempo 2 = 100
  }
}
