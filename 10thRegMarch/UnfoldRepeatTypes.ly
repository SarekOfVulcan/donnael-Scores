\version "2.24.0"
#(define-public (unfold-repeat-types types music)
  "Replace repeats of the types given by @var{types} with unfolded repeats."
  (for-each
    (lambda (type)
      (let ((es (ly:music-property music 'elements))
            (e (ly:music-property music 'element)))
        (if (music-is-of-type? music type)
            (set! music (make-music 'UnfoldedRepeatedMusic music)))
        (if (pair? es)
            (set! (ly:music-property music 'elements)
                  (map (lambda (x) (unfold-repeat-types types x)) es)))
        (if (ly:music? e)
            (set! (ly:music-property music 'element)
                  (unfold-repeat-types types e)))))
    types)
  music)

unfoldRepeatTypes =
#(define-music-function (types music)
  ((symbol-list? '(repeated-music)) ly:music?)
  (_i "Force @code{\\repeat volta}, @code{\\repeat tremolo} or
@code{\\repeat percent} commands in @var{music} to be interpreted
as @code{\\repeat unfold}, if specified in the optional symbol-list @var{types},
which defaults to @code{'(repeated-music)}.
Possible other entries are @code{volta-repeated-music},
@code{tremolo-repeated-music} or @code{percent-repeated-music}.
Multiple entries are possible.")
   (unfold-repeat-types types music))

%%%%%%%%%%%%%%%%%%%%%%%%
%% EXAMPLE
%%%%%%%%%%%%%%%%%%%%%%%%

m =
  \repeat volta 2 {
        \repeat percent 4 { c'1 }
        \repeat tremolo 4 { c'16 d' }
        \repeat tremolo 4 { c'16 d' }
  }
  \alternative {
        { d'1 }
        { e'1 }
  }

\markup "not expanding"
\m

\markup "expanding all, same as unfoldRepeats"
\unfoldRepeatTypes \m

\markup "expanding percent-repeated-music"
\unfoldRepeatTypes #'(percent-repeated-music) \m

\markup "expanding tremolo-repeated-music"
\unfoldRepeatTypes #'(tremolo-repeated-music) \m

\markup "expanding volta-repeated-music"
\unfoldRepeatTypes #'(volta-repeated-music) \m

%% combinations are possible:
\markup "expanding percent-repeated-music and tremolo-repeated-music"
\unfoldRepeatTypes #'(percent-repeated-music tremolo-repeated-music) \m


%{
convert-ly.py (GNU LilyPond) 2.24.3  convert-ly.py: Processing `'...
Applying conversion: 2.20.0, 2.21.0, 2.21.2, 2.22.0, 2.23.1, 2.23.2,
2.23.3, 2.23.4, 2.23.5, 2.23.6, 2.23.7, 2.23.8, 2.23.9, 2.23.10,
2.23.11, 2.23.12, 2.23.13, 2.23.14, 2.24.0
%}
