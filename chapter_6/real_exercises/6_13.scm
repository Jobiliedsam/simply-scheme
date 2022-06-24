;;; Write a better greet procedure that understands as many ...

;;; Rule: professor rule
(define (professor-rule name)
  (se '(i hope i am not bothering you) 'professor (last name)))

;;; Rule: Doctor
(define (doctor-rule name)
  (se '(Hello DR) (last name)))

;;; Rule: Livingstone
(define (livingstone-rule name)
  (se 'DR (last name) 'i 'presume?))

(define (greet name)
  (cond
    ((equal? (first name) 'professor) (professor-rule name))
    ((equal? (first name) 'dr) (doctor-rule name))
    ((member? (first name) '(queen king)) '(Hello Your Majesty))
    ((equal? (last name) 'livingstone) (livingstone-rule name))
    (else (se '(good to see you) (first name)))))