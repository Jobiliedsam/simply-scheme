(define (integer-quotient big little)
  (if (divisible? big little)
    (/  big little)
    #f))

(define (al-integer-quotient big little)
  (and (divisible? big little) (/ big little)))