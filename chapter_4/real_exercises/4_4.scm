; (define (sphere-volume r)
;   (* (/ 4 3) 3.141592654)
;   (* r r r))
; Missing operator between first and second compound expressions

(define (sphere-volume r)
  (* (/ 4 3) 3.141592654 r r r))

; (define (next x)
;   (x + 1))
; In compound expressions (x + 1), operator + usage is wrong
(define (next x)
  (+ x 1))

; (define (square)
;   (* x x))
; This function dont takes any argument
(define (square x)
  (* x x))

; (define (triangle-area triangle)
;   (* 0.5 base height))
; This function dont takes arguments base and height
(define (triangle-area base height)
  (* 0.5 base height))

; (define (sum-of-square (square x) (square y))
;   (+ (square x) (square y)))
; This names functions of arguments is invalid
(define (sum-of-square x y)
  (+ (square x) (square y)))