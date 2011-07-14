\version "2.11.45"
\header {
  mutopiatitle = "Thirty Caprices: No. 8"
  mutopiacomposer = "CavalliniE"
  mutopiainstrument = "Clarinet"
  source = "Carl Fisher, 1909"
  style = "Classical"
  copyright = "Public domain"
  maintainer = "Garrett Fitzgerald"
  maintainerweb = "http://blog.donnael.com/"
  title = "Thirty Caprices: No. 8"
  composer = "Ernesto Cavallini"
}

ECCapriceEight = \relative c' {
  \key f \major

  \partial 4
  c4 \mark \markup{Allegro moderato} | 
  f,32( a bes c d e f g a_\markup{\italic "sempre con forza"} c d e f g a bes 
  c bes a g f e d c bes a g f e d c f,) |
  e32( g c e g c e g) bes( a g f e d cis c bes a g f e d cis c bes a g f e c' bes g) |

  f32( a bes c d e f g a c d e f g a bes c bes a g f e d c bes a g f e d c f,) |
  e32( g c e g c e g) bes( a g f e d cis c bes a g f e d cis c bes a g f e c' bes g) |

  f32( a bes c d e f g a c d e f g a bes c a g f e d c bes a g f e d c bes a) |
  g32( b d g b d g b) d( c b a g fis f e dis d cis c b ais a gis g fis f e d g f d) |

  c32( e g b c e g b c g e c g e c g e g c e g c e g bes g e c g e c g) |
  f32( a bes c d e f g a c d e f g a bes c bes a g f e d c bes a g f e d c f,) |

  e32( g c e g c e g) bes( a g f e d cis c bes a g f e d cis c bes a g f  e c' bes g) |
  f32( a bes c d e f g a c d e f g a bes c bes a g f e d c bes a g f e d c f,) |

  e32( g c e g c e g) bes( a g f e d cis c bes a g f e d cis c bes a g f  e c' bes g) |
  f32( a bes c d e f g a c d e f g a bes c a g f e d c bes a g f e d c bes a) |

  g32( b d g b d g b) d( c b a g fis f e dis d cis c b ais a gis g fis f e d g f d) |
  c32( e g b c e g b c g e c g e c g) e( g c e g c e g bes g e c g e c g) |
  
  f32( a c f a c f a c a f c a f c a) fis( a c fis a c fis a c a fis c a fis c fis,) |
  g32( bes d g bes d g bes d bes g d bes g d bes) gis( b d f b d gis b d b gis d b gis d gis,) |

  a32( cis e a cis e a cis e cis a e cis a e a,) bes!( c e g! bes! c e g! bes! g e c bes g e c) |
  a32( c f a c f a c a f c a f c a f) bes( d g bes d g bes d bes g d bes g d bes g) |

  c32( f a c f a c f c a f c a f c a) c( e g c e g c e c g e c g e c e,) |
  f32( a c f a c f a c a f c a f c a) fis( a c fis a c fis a c a fis c a fis c fis,) |

  g32( bes d g bes d g bes d bes g d bes g d bes) gis( b d gis b d gis b d b gis d b gis d gis,) |
  a32( cis e a cis e a cis e cis a e cis a e cis) bes!( c e g bes! c e g bes! g e c bes g e bes) |

  a32( c f a c f a c a f c a f c a f) bes( d g bes d g bes d bes g d bes g d bes g) | 
  c32( f a c f a c f c a f c a f c a) c( e g c e g c e c g e c g e c e,) |

  f32( e f) f'-. a,( gis a) a'-. c,( b c) c'-. f,( e f) f'-.
  a,( gis a) a'-. c,( b c) c'-.  f,( e f) f'-. c( a f) c,-. |
  f,4 r r2 \bar "|."
}

\book {
  \score {
    \new Staff {
      \clef treble
      \time 4/4
      \set beatLength = #(ly:make-moment 1 8)
      \set Staff.midiInstrument = "clarinet"
      #(set-global-staff-size 15)
      \ECCapriceEight
    }
    
    \layout {
    }
    
    \midi {
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 70 4)
      }  
    }
  }
  \paper { 
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }
}
