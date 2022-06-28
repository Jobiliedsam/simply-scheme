;;; We are going to write a procedure that solves quadratic equations.
;;; ax² + bx + c = 0 when x = (-b +- (b² - 4ac) ^ (1/2)) / 2a
(define (roots0 a b c)
  (se 
    (/ (+ (- b) (sqrt (- (* b b) (* 4.0 a c))))
    (* 2.0 a))
    (/ (- (- b) (sqrt (- (* b b) (* 4.0 a c))))
    (* 2.0 a))))

(define (roots1 a b c)
  (roots-d a b c (sqrt (- (* b b) (* 4 a c)))))

(define (roots-d a b c discriminant)
  (se 
    (/ (+ (- b) discriminant) (* 2 a))
    (/ (- (- b) discriminant) (* 2 a))))

(define (roots2 a b c)
  (let ((discriminant (sqrt (- (* b b) (* 4 a c)))))
    (se 
      (/ (+ (- b) discriminant) (* 2 a))
      (/ (- (- b) discriminant) (* 2 a)))))

(define (roots a b c)
  (let 
    (
      (discriminant (sqrt (- (* b b) (* 4 a c))))
      (minus-b (- b))
      (two-a (* 2 a))
    )
      (se 
        (/ (+ minus-b discriminant) two-a)
        (/ (- minus-b discriminant) two-a))))