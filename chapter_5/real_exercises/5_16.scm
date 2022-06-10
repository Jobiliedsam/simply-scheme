;;; Write a procedure two-frist that takes two words as arguments,
;;; returning a word containing the first letters of the two arguments.
(define (two-first word1 word2)
  (word
    (first word1)
    (first word2)))

;;; Write a procedure two-first-sent that takes a two-word sentence as argument,
;;; returning a two-letter word containing the first letters of the two-words.
(define (two-first-sent two-word-sent)
  (word 
    (first (first two-word-sent))
    (first (last two-word-sent))))