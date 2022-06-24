;;; Make plural procedure handle correclty words that end in y byt have a vowel before the y ...

;;; is a letter an vowel?
(define (vowel? letter)
  (member? letter '(a e i o u)))

;;; Get a last two letter of a word
(define (lasttwo wd)
  (word (last (butlast wd)) (last wd)))

;;; Rule: Words that end with y.
(define (rule-ies wd)
  (if (vowel? (last (butlast wd)))
    (word wd 's)
    (word (butlast wd) 'ies)))

;;; Rule: Words that end with s, ss, sh, ch, x or z add es to the end.
(define (rule-es wd)
  (if (equal? (lasttwo wd) 'is)
    (word (butlast (butlast wd) 'es))
    (word wd 'es)))

(define (plural wd)
  (cond
    ((equal? (last wd) 'y) (rule-ies wd))
    ((or 
      (member? (lasttwo wd) '(is ss sh ch)) 
      (member? (last wd) '(s x z o))) (rule-es wd))
    (else (word wd 's))))