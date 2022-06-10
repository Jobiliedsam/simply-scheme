;;; Write a procedure third that selects the third letter of a word of sentence.
(define (third expression)
  (first 
    (butfirst 
      (butfirst expression))))