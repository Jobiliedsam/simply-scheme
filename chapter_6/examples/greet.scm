(define (greet name)
  (if (equal? (first name) 'professor)
    (se '(i hope i am not bothering you) 'professor (last name))
    (se '(good to see you) (first name))))