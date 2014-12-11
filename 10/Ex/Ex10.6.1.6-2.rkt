;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex10.6.1.6-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; name-robot : a list of name -> a list of name 
;; example 
;;(name-robot (cons 'robot empty)) = excepted value : (cons 'r2d2)
;;(name-robot (cons 'bool (cons 'robot empty))) = e v : (cons 'bool (cons 'r2b2 empty)
;;(name-robot empty)= ev empty



;;substitute : new old list -> list
;;example:
;;(substitute 'Barbie 'doll (cons 'robot (cons 'doll (cons 'derss empty )))) ec = (cons 'robot (cons 'Barbie (cons 'dress empty))))

(define (substitute new old nameList)
  (cond
    [(empty? nameList) empty]
    [else  
     (cond
       [(symbol=? (first nameList) old) (cons new ( substitute new old (rest nameList)))]
       [else (cons (first nameList) (substitute new old (rest nameList)))])]))
 



