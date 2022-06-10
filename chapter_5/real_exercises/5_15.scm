;;; Write a procedure first-two that takes a word as its argument and returt first two letters.
(define (first-two expression)
  (word 
    (first expression) 
    (first (butfirst expression))))