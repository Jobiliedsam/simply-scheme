;;; Write a procedure european-time to convert a time from American AM/PM ...
(define (european-time time period)
  (cond
    ((and (= time 12) (equal? period 'pm)) time)
    ((equal? period 'pm) (+ time 12))
    ((= time 12) 24)
    (else time)))


(define (american-time time)
  (cond
    ((= time 12) (sentence time 'PM))
    ((= time 24) (sentence 12 'AM))
    ((< time 12) (sentence time 'AM))
    (else (sentence (- time 12) 'PM))))