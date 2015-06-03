;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Merge-function) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; produce a list of num 
;; ********consider the function consume and produce********
;; is VERY IMPORTANT !!!!!!
(define (merge l1 l2)
  (cond
    [(and (empty? l1) (empty? l2)) empty]
    [(and (cons? l1) (empty? l2)) l1]
    [(and (empty? l1) (cons? l2)) l2]
    [else
     (cond
       [(< (first l1) (first l2)) (append (list (first l1) (first l2)) (merge (rest l1) (rest l2))) ]
       [(> (first l1) (first l2)) (append (list (first l2) (first l1)) (merge (rest l1) (rest l2))) ]
       )]))
