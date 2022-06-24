;;; Write a procedure describe-time that takes a number of seconds as ...
(define (describe-time seconds)
  (cond
    ((> seconds 31536000000) (sentence (/ seconds 31536000000.0) 'millennia))
    ((> seconds 3153600000) (sentence (/ seconds 3153600000.0) 'centuries))
    ((> seconds 31536000) (sentence (/ seconds 31536000.0) 'years))
    ((> seconds 86400) (sentence (/ seconds 86400.0) 'days))
    ((> seconds 3600) (sentence (/ seconds 3600.0) 'hours))
    ((> seconds 60) (sentence (/ seconds 60.0) 'minutes))
    (else (sentence seconds 'seconds))))