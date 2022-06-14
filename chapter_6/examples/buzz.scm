(define (buzz num)
  (if (or (divisible? num 7) (member? 7 num))
    'buzz
    num))

(define (divisible? big little)
  (= (remainder big little) 0))