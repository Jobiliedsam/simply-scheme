; Write a procedure that computes the absolute value of its arguments 
; by finding the square root of the square of the argument.
(define (absolute number)
  (sqrt(* number number)))