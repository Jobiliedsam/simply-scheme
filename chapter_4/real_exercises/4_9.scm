;;; Define a procedure discount 
(define (discount price percentage)
  (- price (* price (/ percentage 100.0))))