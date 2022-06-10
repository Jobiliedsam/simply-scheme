;;; Define a procedure to fin somebody's middle names
(define (middle-names name)
  (sentence
    (butfirst 
      (butlast name))))