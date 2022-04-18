;;; Example: Ice Cream Choices
(define (choices menu)
    (if (null? menu)
        '(())
        (let ((smaller (choices (cdr menu))))
            ;(bkpt smaller menu item)
            (reduce append 
                (map (lambda (item) (prepend-every item smaller))
                    (car menu))))))

(define (prepend-every item lst)
    (map (lambda (choice) (se item choice)) lst))

(define ice-cream-options 
    '(
        (small mediu large)
        (vanilla (ultra chocolate) (rum raisin) ginger)
        (cone cup)
    ))

;(choices ice-cream-options)
;Value: 
;(
;   (small vanilla cone) 
;   (small vanilla cup) 
;   (small ultra chocolate cone) 
;   (small ultra chocolate cup) 
;   (small rum raisin cone)
;   (small rum raisin cup)
;   (small ginger cone) 
;   (small ginger cup) 
;   (mediu vanilla cone) 
;   (mediu vanilla cup) 
;   (mediu ultra chocolate cone) 
;   (mediu ultra chocolate cup) 
;   (mediu rum raisin cone) 
;   (mediu rum raisin cup) 
;   (mediu ginger cone)
;   (mediu ginger cup) 
;   (large vanilla cone)
;   (large vanilla cup) 
;   (large ultra chocolate cone)
;   (large ultra chocolate cup) 
;   (large rum raisin cone)
;   (large rum raisin cup) 
;   (large ginger cone) 
;   (large ginger cup)
;)