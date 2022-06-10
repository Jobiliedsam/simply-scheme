;;; Write a procedure query that turns a statement into a question.
(define (query statement)
  (sentence
    (first (butfirst statement))
    (first statement)
    (butfirst (butfirst (butlast statement)))
    (word (last statement) '?)))
