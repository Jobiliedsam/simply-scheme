(define (plural wd)
  (if (equal? (last wd) 'y)
    (word (butlast wd) 'ies)
    (word wd 's)))