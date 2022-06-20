;;; Rewrite the following procedure using a cond instead of the ifs
;;; (define (sing number)
;;;   (if (< number 0)
;;;     'negative
;;;     (if (= number 0)
;;;       'zero
;;;       'positives)))

(define (sing number)
  (cond ((< number 0) 'negative)
    ((= number 0) 'zero)
    (else 'positive)))