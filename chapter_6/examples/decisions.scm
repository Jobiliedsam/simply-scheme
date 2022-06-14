(define (if-roman-value letter)
  (if (equal? letter 'i)
    1
    (if (equal? letter 'v) 
      5
      (if (equal? letter 'x)
        10
        (if (equal? letter 'l)
          50
          (if (equal? letter 'c)
            100
            (if (equal? letter 'd)
              500
              (if (equal? letter 'm)
                1000
                'huh?))))))))

(define (roman-value letter)
  (cond 
    ((equal? letter 'i) 1)
    ((equal? letter 'v) 5)
    ((equal? letter 'x) 10)
    ((equal? letter 'l) 50)
    ((equal? letter 'c) 100)
    ((equal? letter 'd) 500)
    ((equal? letter 'm) 1000)
    (else 'huh?)))

(define (truefalse value)
  (cond 
    (value 'true)
    (else 'false)))