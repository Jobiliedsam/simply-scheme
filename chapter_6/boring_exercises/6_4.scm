;;; Rewrite the following procedure using an if instead of cond
;;; (define (utensil meal)
;;;   (cond ((equal? meal 'chinese) 'chopsticks)
;;;     (else 'fork)))
(define (utensil meal)
  (if (equal? meal 'chinese)
    'chopsticks
    'fork))