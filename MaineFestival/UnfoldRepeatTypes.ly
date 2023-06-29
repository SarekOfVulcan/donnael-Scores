\version "2.19.51"
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
