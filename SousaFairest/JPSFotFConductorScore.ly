\version "2.16.2"
\paper {
  #(set-paper-size "letter")
}
\include "JPSFotF.ly"

\header {
  instrument = "Conductor's score"
}

\score { 
  {
    <<
      \new Staff { 
	\set Staff.midiInstrument = "piccolo" 
	\set Staff.instrumentName = "Piccolo in Db"
	\set Staff.shortInstrumentName = "Db Picc."
	\piccoloInDb
      }
      
      \new Staff {
	\set Staff.midiInstrument = "flute"
	\set Staff.instrumentName = "Flute in C"
	\set Staff.shortInstrumentName = "Flute"

	\fluteInC
      }
      
      \new Staff \with { printPartCombineTexts = ##f } { 
	<<
	  \set Staff.midiInstrument = "oboe"
	  \set Staff.instrumentName = "Oboe"
	  \set Staff.shortInstrumentName = "Oboe"
	  
	  \partcombine \oboeOne \oboeTwo
	>>
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	<<
	  \set Staff.midiInstrument = "bassoon"
	  \set Staff.instrumentName = "Bassoon"
	  \set Staff.shortInstrumentName = "Bass."
	  
	  \partcombine \bassoonOne \bassoonTwo
	>>
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "clarinet"
	\set Staff.instrumentName = "Eb Clarinet"
	\set Staff.shortInstrumentName = "Eb Clar."
	
	\clarinetInEb
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "clarinet"
	\set Staff.instrumentName = "Solo & 1st Bb Clarinet"
	\set Staff.shortInstrumentName = "Clar. Solo&1"
	
	\clarinetInBbSOne
      }
      
      \new Staff \with { printPartCombineTexts = ##f } { 
	<<
	  \set Staff.midiInstrument = "clarinet"
	  \set Staff.instrumentName = "2nd & 3rd Bb Clarinet"
	  \set Staff.shortInstrumentName = "Clar. 2&3"
	  
	  \partcombine \clarinetInBbTwo \clarinetInBbThree
	>>
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "clarinet"
	\set Staff.instrumentName = "Alto Clarinet in Eb"
	\set Staff.shortInstrumentName = "Alto Clar."
	
	\altoClarinetInEb
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "clarinet"
	\set Staff.instrumentName = "Bass Clarinet"
	\set Staff.shortInstrumentName = "Bass Clar."
	
	\bassClarinet
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "soprano sax"
	\set Staff.instrumentName = "Soprano Saxophone"
	\set Staff.shortInstrumentName = "Sop. Sax."
	
	\sopranoSax
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "alto sax"
	\set Staff.instrumentName = "Eb Alto Saxophone"
	\set Staff.shortInstrumentName = "Alto Sax"
	
	\altoSaxophoneInEb
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "tenor sax"
	\set Staff.instrumentName = "Bb Tenor Saxophone"
	\set Staff.shortInstrumentName = "Tenor Sax"
	
	\tenorSaxophoneInBb
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "baritone sax"
	\set Staff.instrumentName = "Eb Baritone Saxophone"
	\set Staff.shortInstrumentName = "Bari Sax"
	
	\baritoneSaxophoneInEb
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "trumpet"
	\set Staff.instrumentName = "Eb Cornet"
	\set Staff.shortInstrumentName = "Eb Cornet"
	
	\cornetInEb
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "trumpet"
	\set Staff.instrumentName = "Solo Bb Cornet"
	\set Staff.shortInstrumentName = "Solo Cornet"
	
	\cornetInBbSolo
      }

      \new Staff \with { printPartCombineTexts = ##f } { 
	\set Staff.midiInstrument = "trumpet"
	\set Staff.instrumentName = "1st Bb Cornet"
	\set Staff.shortInstrumentName = "1st Bb Cornet"
	
	\cornetInBbOne
      }
    >>
  }
  \layout{}
}