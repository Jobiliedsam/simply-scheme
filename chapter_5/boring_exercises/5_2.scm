;;; Write a procedure of two arguments that, 
;;; when applied to the sample arguments, returns the sample result

;;; Expression f1
;;; Call: (f1 '(a b c) '(d e f))
;;; Result: (b c d e)
(define (f1 sen1 sen2)
  (sentence (butfirst sen1) (butlast sen2)))

;;; Expression f2
;;; Call: (f2 '(a b c) '(d e f))
;;; Result: (b c d e af)
(define (f2 sen1 sen2)
  (sentence 
    (f1 sen1 sen2) 
    (word (first sen1) (last sen2))))

;;; Expression f3
;;; Call: (f3 '(a b c) '(d e f))
;;; Result: (a b c a b c)
(define (f3 sen1 sen2)
  (sentence sen1 sen1))

;;; Expression f4
;;; Call: (f4 '(a b c) '(d e f))
;;; Result: 
(define (f4 sen1 sen2)
  (word (second sen1) (second sen2)))
