;;; Write a procedure scientific tha takes two arguments a number and an exponent
;;; of 10, and returns the corresponding value
(define (scientific value exponent)
  (* value (expt 10 exponent)))

;;; A harder problem for hotshots: Can you write procedures that go in the other direction ?
(define (log10 value)
  (/ (log value) (log 10)))

(define (sci-coefficient value)
  (/ value (expt 10 (floor(log10 value)))))

(define (sci-exponent value)
  (floor(log10 value)))
