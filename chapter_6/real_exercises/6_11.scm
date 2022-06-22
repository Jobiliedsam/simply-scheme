;;; Write a predicate valid-date that takes three numbers as arguments ...
(define (leap-year? year)
  (and 
    (= (remainder year 4) 0) 
    (or (not (= (remainder year 100) 0))
        (= (remainder year 400) 0))))

(define (basic-valid-date? month day year)
  (and 
    (> year 0) 
    (> day 0) 
    (> month 0) 
    (<= month 12)))

;;; Month - Days
;;; 01 - 31
;;; 02 - 28 (29 in leap year)
;;; 03 - 31
;;; 04 - 30
;;; 05 - 31
;;; 06 - 30
;;; 07 - 31
;;; 08 - 31
;;; 09 - 30
;;; 10 - 31
;;; 11 - 30
;;; 12 - 31
(define (valid-date? month day year)
  (cond 
    ((not (basic-valid-date? month day year)) #f)
    ((and (= month 2) (leap-year? year)) (<= day 29))
    ((= month 2) (< day 29))
    ((member? month '(4 6 9 11)) (<= day 30))
    (else (<= day 31))))