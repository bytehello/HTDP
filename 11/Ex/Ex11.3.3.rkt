;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex11.3.3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; consume a natural number and two integers called low and high
;;procuce a list of n numbers that between low and high
;; create-temps : number number number -> a list of number
#|
(define (create-temps n low high)
  (cond
    [(zero? n) empty]
    [else n ...(create-temps (sub1 n) low high)...]
|#    
;;--------------------------------------------------
#|
1.first,result is empty
2.second,(create-temps (sub1 n) low high) produce a list of (n-1) numbers that
between low and high
*****************************************************
Purpose:
we need a list of n numbers
|#
    
(define (create-temps n low high)
  (cond
    [(zero? n) empty]
    [else (cons (+ low (random (- (+ high 1) low))) (create-temps (sub1 n) low high))]))