;;; Write a procedure insert-and that takes a sentence of items
;;; and returns a new sentence with and in the right place.
(define (insert-and sent)
  (sentence 
    (butlast sent)
    'and
    (last sent)))