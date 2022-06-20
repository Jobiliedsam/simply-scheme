;;; Write a procedure indef-article ...
(define (vowel? letter)
  (member? letter '(a e i o u)))

(define (indef-article word)
  (if (vowel? (first word))
    (sentence 'an word)
    (sentence 'a word)))