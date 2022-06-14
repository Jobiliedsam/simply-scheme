(define (greet name)
  (if (equal? (first name) 'professor)
    (sentence '(pleased to meet you)
      'professor
      (last name)
      '(-- how are you?))
    (sentence '(pleased to meet you)
      (first name)
      '(-- how are you?))))

(define (greet2 name)
  (sentence '(pleased to meet you)
    (if (equal? (first name) 'professor)
      (sentence 'professor (last name))
      (first name))
    '(-- how are you?)))

;;; Create a professor function to avoids repeating the commom parts of the response by using
;;; if whitin larger expressins and using if in the middle of setence function. (It is a quite confusing)
(define (professor? name)
  (if (equal? (first name) 'professor)
    (sentence 'professor (last name))
    (first name)))

(define (greet3 name)
  (sentence 
    '(pleased to meet you)
    (professor? name)
    '(-- how are you?)))

