;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;cross : alon alos -> list
;;consume a list of symbol and a list of  numbers ,pruducer a pair of symbols and numbers
;;Example : (cross (list 'a 'b 'c) (list 1 2 )) -> (list (list a 1) (list a 2) (list b 1) (list b 2) (list b 3).... ) 
;;Example : (cross (list 'a 'b 'c) empty) -> (list (list a empty))
;;Example : (cross empty (list 1 2 3)) -> (list (list empty 1) (list empty 2)
(define (cross alos alon)
  (cond
    [(empty? alos) empty]
    [else
     (append (cross-s (first alos) alon) (cross (rest alos) alon))]))


;;Example : (cross-s 'a (list 1 2)) -> (list (list 'a 1) (list 'a 2))
(define (cross-s s alon)
  (cond
    [(empty? alon) empty]
    [else
     (cons (list s (first alon)) (cross-s s (rest alon)))]))