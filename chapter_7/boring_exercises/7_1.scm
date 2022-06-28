;;; The following procedure does some redundant computation.
;;; (define (vowel? letter)
;;;   (member? letter '(a e i o u)))
;;; 
;;; (define (gertrude wd)
;;;   (se
;;;     (if (vowel? (first wd)) 'an 'a)
;;;     wd
;;;     'is
;;;     (if (vowel? (first wd)) 'an 'a)
;;;     wd
;;;     'is
;;;     (if (vowel? (first wd)) 'an 'a)
;;;     wd))
;;; Use let to avoid the redundant work.

(define (vowel? letter)
  (member? letter '(a e i o u)))

(define (gertrude wd)
  (let (
      (phrase (se (if (vowel? (first wd)) 'an 'a) wd))
    )
      (se phrase 'is phrase 'is phrase)))