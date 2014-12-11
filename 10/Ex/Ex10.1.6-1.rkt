;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex10.1.6-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

(define (name-robot nameList)
  (cond
    [(empty? nameList) empty]
    [else  
     (cond
       [(symbol=? (first nameList) 'robot) (cons 'r2d2 (name-robot (rest nameList)))]
       [else (cons (first nameList) (name-robot (rest nameList)))])]))
(name-robot (cons 'doll (cons 'robot empty)))