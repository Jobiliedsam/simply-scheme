;;; Write a procedure sort2 that takes as its argument a sentence containing ...
(define (sort2 pair)
  (if (> (first pair) (last pair))
    (sentence (last pair) (first pair))
    pair))