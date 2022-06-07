; Define a procedure fourth that computes the fourth power of its argument.
(define (square x)
  (* x x))

(define (fourth number)
  (* number number number number))

(define (sq-fourth number)
  (* (square number) (square number)))