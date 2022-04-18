;;; Pig Latin 
;;; - Each word is translated by moving all the initial consonants to the end of the word and adding "ay" at the end 

(define (pigl wd)
    (if (member? (first wd) 'aeiou)
        (word wd 'ay)
        (pigl (word (butfirst wd) (first wd)))))