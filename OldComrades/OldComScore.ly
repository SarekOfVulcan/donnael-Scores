\version "2.24.3"
\include "OldComrades.ly"

#(set-global-staff-size 12)

\paper {
  #(set-paper-size "legal")
  first-page-number = 1
  evenHeaderMarkup =  \markup {
      \fill-line {
        \if \should-print-page-number
        \fromproperty #'page:page-number-string
        \if \should-print-page-number
        \fromproperty #'header:title
        \null
      }
    }
  oddHeaderMarkup =  \markup {
      \fill-line {
        \null
        \if \should-print-page-number
        \fromproperty #'header:title
        \if \should-print-page-number
                \fromproperty #'page:page-number-string
      }
    }
}


\header {

}

\score {
  <<
    \new StaffGroup <<
      \new Staff  {
        \set Staff.instrumentName = "Flute 1 (Picc)"
        \set Staff.shortInstrumentName = "Fl 1"

        \clef treble
        <<
          \rehearsalMarks
          \fluteOne
        >>
      }

      \new Staff  {
        \set Staff.instrumentName = "Flute 2"
        \set Staff.shortInstrumentName = "Fl 2"

        \clef treble
        <<
          \rehearsalMarks
          \fluteTwo
        >>
      }
    >>
    \new Staff  {
      \set Staff.instrumentName = "Oboe"
      \set Staff.shortInstrumentName = "Oboe"

      \clef treble
      \oboeOne
    }

    \new Staff  {
      \set Staff.instrumentName = "Bassoon"
      \set Staff.shortInstrumentName = "Bsn"

      \clef bass
      \bassoonOne
    }
    \new StaffGroup <<
      \new Staff  {
        \set Staff.instrumentName = "Eb Clarinet"
        \set Staff.shortInstrumentName = "Eb Cl"

        \clef treble
        \clarinetEb
      }

      \new Staff  {
        \set Staff.instrumentName = "Clarinet 1"
        \set Staff.shortInstrumentName = "Clar 1"

        \clef treble
        \clarinetOne
      }

      \new Staff  {
        \set Staff.instrumentName = "Clarinet 2"
        \set Staff.shortInstrumentName = "Clar 2"

        \clef treble
        \clarinetTwo
      }

      \new Staff  {
        \set Staff.instrumentName = "Clarinet 3"
        \set Staff.shortInstrumentName = "Clar 3"

        \clef treble
        \clarinetThree
      }

      \new Staff  {
        \set Staff.instrumentName = "Bass Clarinet"
        \set Staff.shortInstrumentName = "B. Clar"

        \clef treble
        \clarinetBass
      }
    >>

    \new StaffGroup <<
      \new Staff  {
        \set Staff.instrumentName = "Alto Sax"
        \set Staff.shortInstrumentName = "Alto"

        \clef treble
        \saxAlto
      }

      \new Staff  {
        \set Staff.instrumentName = "Tenor Sax"
        \set Staff.shortInstrumentName = "Tenor"

        \clef treble
        \saxTenor
      }

      \new Staff  {
        \set Staff.instrumentName = "Baritone Sax"
        \set Staff.shortInstrumentName = "Bari"

        \clef treble
        \saxBaritone
      }
    >>

    \new Staff  {
      \set Staff.instrumentName = "Trumpet 1"
      \set Staff.shortInstrumentName = "Tr 1"

      \clef treble
      \trumpetOne
    }

    \new Staff  {
      \set Staff.instrumentName = "Trumpet 2"
      \set Staff.shortInstrumentName = "Tr 2"

      \clef treble
      \trumpetTwo
    }
    \new StaffGroup <<
      \new Staff  {
        \set Staff.instrumentName = "Solo Cornet"
        \set Staff.shortInstrumentName = "Solo Cor"

        \clef treble
        \cornetSolo
      }

      \new Staff  {
        \set Staff.instrumentName = "Cornet 1"
        \set Staff.shortInstrumentName = "Cor 1"

        \clef treble
        \cornetOne
      }

      \new Staff  {
        \set Staff.instrumentName = "Cornet 2"
        \set Staff.shortInstrumentName = "Cor 2"

        \clef treble
        \cornetTwo
      }

      \new Staff  {
        \set Staff.instrumentName = "Cornet 3"
        \set Staff.shortInstrumentName = "Cor 3"

        \clef treble
        \cornetThree
      }
    >>
    \new StaffGroup <<
      \new Staff  {
        \set Staff.instrumentName = "Horn 1"
        \set Staff.shortInstrumentName = "Hn 1"

        \clef treble
        \hornOne
      }

      \new Staff  {
        \set Staff.instrumentName = "Horn 2"
        \set Staff.shortInstrumentName = "Hn 2"

        \clef treble
        \hornTwo
      }

      \new Staff  {
        \set Staff.instrumentName = "Horn 3"
        \set Staff.shortInstrumentName = "Hn 3"

        \clef treble
        \hornThree
      }

      \new Staff  {
        \set Staff.instrumentName = "Horn 4"
        \set Staff.shortInstrumentName = "Hn 4"

        \clef treble
        \hornFour
      }
    >>
    \new StaffGroup <<
      \new Staff  {
        \set Staff.instrumentName = "Trombone 1"
        \set Staff.shortInstrumentName = "Tb 1"

        \clef bass
        \tromboneOne
      }

      \new Staff  {
        \set Staff.instrumentName = "Trombone 2"
        \set Staff.shortInstrumentName = "Tb 2"

        \clef bass
        \tromboneTwo
      }

      \new Staff  {
        \set Staff.instrumentName = "Trombone 3"
        \set Staff.shortInstrumentName = "Tb 3"

        \clef bass
        \tromboneThree
      }
    >>

    \new Staff  {
      \set Staff.instrumentName = "Euphonium"
      \set Staff.shortInstrumentName = "Euph"

      \clef bass
      \transpose c bes,, \baritoneTC
    }

    \new Staff  {
      \set Staff.instrumentName = "Basses"
      \set Staff.shortInstrumentName = "Bass"

      \clef bass
      \basses
    }

    \new DrumStaff  {
      \set Staff.instrumentName = "Drums"
      \set Staff.shortInstrumentName = "Drums"

      \drumSnareBass
    }


  >>

  \layout {
    short-indent = 1.5\cm
  }
}