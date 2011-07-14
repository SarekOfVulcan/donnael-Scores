\version "2.11.45"
\header {
  mutopiatitle = "Thirty Caprices: No. 7"
  mutopiacomposer = "CavalliniE"
  mutopiainstrument = "Clarinet"
  source = "Carl Fisher, 1909"
  style = "Classical"
  copyright = "Public domain"
  maintainer = "Garrett Fitzgerald"
  maintainerweb = "http://blog.donnael.com/"
  title = "Thirty Caprices: No. 10"
  composer = "Ernesto Cavallini"
}

#(set-global-staff-size 17)

dolce = \markup{ \italic dolce }

ECCapriceTen = \relative c'' {
  \key f \major

  \times 4/6 { f16( a) g-| f-| e-| g-| f( a) g-| e-| f-| d-| 
	       e( c) b-| d-| c-| e-| d( bes) a-| c-| g-| c-| } |
  f,2(\> c4)\! r |
  \times 4/6 { g''16( bes) a-| g-| fis-| a-| g( bes) a-| fis-| g-| e-| 
	       f( ees) d-| cis-| d-| e-|  d( cis) d-| c-| b-| a-| } |
  g2(\> d4) \! r |
  \times 4/6 { bes''16( g) fis-| a-| g-| e-|  dis( f) e-| c-| bes-| a-| 
	       c( bes) g-| fis-| a-| g-|  e( dis) f-| e-| c-| bes-| } |
  a4-.-> f'''-.-> b,,,-.-> d''-.->
  \times 4/6 { d16( c) a-| f-| d-| c-| a( f) d-| c-| a-| f-| 
	       e( g) c-| e-| g-| bes-| c( e) g-| bes-| a-| g-| |
	       f( a) g-| f-| e-. g-. f( a) g-| e-| f-. d-.
	       e( c) b-. d-. c-. e-. d( bes) a-. c-. g-. c-. | |
	       f,( a) g-. f-. e-. g-. f( a) g-. e-. f-. d-. 
	       e( c) b-. d-. c-. e-. d( bes) a-. c-. g-. c-. | }
  f,4 r8. c'16(_\dolce a'8.) c,16( a'8.) c,16( | g'4) r8. c16( g'8.) c,16( g'8.) a16( |
  f4) r8. c,16(       a'8.) c,16( a'8.) c,16( | g'4) r8. c16( g'8.) c,16( g'8.) a16( |
  f4) r8. a,16( d8.) cis16( d8.) e16( | d4-> cis8) r16 c( f8.\p) e16( f8.) g16( | 
  f4-> e8) r16 a,( d8.\p) cis16( d8) f16( e | d4\> cis8\!) r16 c( f8.\p) e16( f8 a16 g) |
  f4( e8) r16 c\ff( a'8.) c,16( a'8.) c16( | g4) r8. b,16\p( g'8.) bes,16( g'8.) a16( |
  f4) r8. c16\ff( a'8.) c,16( a'8.) c16( | g4) r8. b,16\p( g'8.) bes,16( g'8.) a16( |
  \times 4/6 { f16)( a) g-. f-. e-. g-. f( a) g-. e-. f-. d-. 
	       e( c) b-. d-. c-. e-. d( bes) a-. c-. g-. c-. |
	       f,( a) g-. f-. e-. g-. f( a) g-. e-. f-. d-. 
	       e( c) b-. d-. c-. e-. d( bes) a-. c-. g-. c-. | }
  f,4 
  \times 4/6 { r16 a''( c f c a) 
	       gis( b e ees bes g) fis( a d des aes fis) |
	       e( g c b fis dis) d( f bes a e cis) 
	       c( ees aes g d b) ais( cis fis f c a) |
	       gis( b e ees bes g) fis( a d des aes f) 
	       e( g c bes g e) (c b) c-. cis-. e-. bes-. | }
  a4-. f'''-. b,,,-. d''-. |
				% page break
  \times 4/6 { d16( c) a-. f-. d c-. a( f) d-. c-. a-. f-. 
	       e( g) c-. e-. g-. bes-. c( e) a-. bes-. a-. g-. |
	       f( a) g-. f-. e-. g-. f( a) g-. e-. f-. d-.
	       e( c) b-. d-. c-. e-. d( bes) a-. c-. g-. c-. |
	       f,( a) g-. f-. e-. g-. f( a) g-. e-. f-. d-. 
	       e( cis) bes-. a-. gis( a) d( c) f( e) bes'( a) | }
  d,4 r8. a16_\dolce( f'8.) a,16( f'8.) a,16( | e'4) r8. a16( e'8.) a,16( e'8.) f16( |
  d4) r8. a,16( f'8.) a,16( f'8.) a,16( | e'4) r8. a16( e'8.) a,16( e'8.) f16( |
  d4) r8. d16 bes'4.( a16 g) | f8. e16 d8. d16 \acciaccatura f8 e8.( d16 e8. f16) |
  d4 r8. d16 d'4.( c16 bes) | a8. f16 d8. des16 c8-. f-. e( a16 g) |
  f4 r8. c16( a'8.\ff) c,16( a'8.) c16( | g4) r8. b,16( g'8.\p) bes,16( g'8.) a16( |
  f4) r8. c16( a'8.\ff) c,16( a'8.) c16( | g4) r8. b,16( g'8.\p) bes,16( g'8.) a16( |
  \times 4/6 { f16)( a) g-. f-. e-. g-. f( a) g-. e-. f-. d-. 
	       e( c) b-. d-. c-. e-. d( bes) a-. c-. g-. c-. |
	         f,( a) g-. f-. e-. g-. f( a) g-. e-. f-. d-. 
	       e( c) b-. d-. c-. e-. d( bes) a-. c-. g-. c-. | }
  f,4
  \times 4/6 { r16 a''( c f c a) gis( b e ees bes g) fis( a d des aes f) |
	       e( g c b fis dis) d( f bes a e cis) 
	       c( ees aes g d b) ais( cis fis f c a) |
	       gis( b e ees bes g) fis( a d des aes f) 
	       e( g c bes g e) c( b c) cis-. d-. bes-. | }
  a4-.-> f'''-.-> b,,,-.-> d''-.-> |
  \times 4/6 { d16( c) a-| f-| d-| c-| a( f) d-| c-| a-| f-|
	       e( g) c-| e-| g-| b-| c( e) g-| b-| a-| g-| |
	       f( a) g-| f-| e-| g-| f( a) g-| e-| f-| d-|
	       e( c) b-| d-| c-| e-| d( bes) a-| c-| g-| c-| |
	         
  \bar "|."
}

\book {
  \score {
    \new Staff {
      \clef treble
      \time 4/4

      \set tupletSpannerDuration = #(ly:make-moment 6 24)
      \set Score.beatLength = #(ly:make-moment 6 24)
      \set Staff.midiInstrument = "clarinet"
      #(override-auto-beam-setting '(end * * * *) 6 24)
      #(override-auto-beam-setting '(end * * * *) 12 24)
      #(override-auto-beam-setting '(end * * * *) 18 24)
      \ECCapriceTen
    }
    
    \layout {
      #(layout-set-staff-size 15)
    }
    
    \midi {
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 60 4)
      }  
    }
  }
  \paper { 
    between-system-space = 1.5\cm
    between-system-padding = #1
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }
}
