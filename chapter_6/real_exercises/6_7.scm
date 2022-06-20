;;; Write a procedure type-of that takes anything as its argument and ...
(define (type-of value)
  (cond
    ((number? value) 'number)
    ((sentence? value) 'sentence)
    ((word? value) 'word)
    (else 'boolean)))