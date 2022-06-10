;;; Write a procedure to compute the tip you should leave at a restaurant
(define (tip value)
  (ceiling (* value 0.15)))