; Write a procedure to convert a temperature from Fahrenheit to Celsius
; And another to convert in the other direction
(define (fahrenheit-to-celsius temperature)
  (* (/ 5 9) (- temperature 32)))

(define (celsius-to-fahrenheit temperature) 
  (+ (* (/ 9 5) temperature) 32))