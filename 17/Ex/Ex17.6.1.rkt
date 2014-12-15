;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex17.2.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp")))))
#|
Develop the function merge. It consumes two lists of numbers, sorted in ascending order. It produces a single sorted list of numbers that contains all the numbers on both inputs lists (and nothing else). A number occurs in the output as many times as it occurs on the two input lists together.

Examples:

(merge (list 1 3 5 7 9) (list 0 2 4 6 8))
;; expected value: 
(list 0 1 2 3 4 5 6 7 8 9)
(merge (list 1 8 8 11 12) (list 2 3 4 8 13 14))
;; expected value: 
(list 1 2 3 4 8 8 8 11 12 13 14) ; 
|#

(define (merge alon1 alon2)
  (cond
    [(empty? alon1) alon2]
    [else
     (insert (first alon1) (merge (rest alon1) alon2))]))

;; Comsume a number and a list of number ,by 升序
;;Example :
;;(insert 2 (list 4 5 5)) -> (list 2 4 5 5）
;;(insert 3 (list 0 2 4) -> (list 0 2 3 4)
;;(insert 2 empty) -> (list 2)



(define (insert n alon)
  (cond
    [(empty? alon) (list n)]
    [else (cond
            [(< n (first alon)) (cons n alon)]
            [else (cons (first alon)(insert n (rest alon)))])]))
