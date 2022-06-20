;;; Write a predicate teen? that returns true if its argument is between 13 an 19
(define (teen? age)
  (and (>= age 13) (<= age 19)))