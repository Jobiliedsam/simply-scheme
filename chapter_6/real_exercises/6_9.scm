;;; Write a procedure thismany that takes two arguments, a number and a singular ...
(define (thismany quantity object)
  (if (> quantity 1)
    (sentence quantity (word object 's))
    (sentence quantity object)))