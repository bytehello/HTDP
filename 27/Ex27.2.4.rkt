;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Ex27.2.4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;Develop the function create-matrix. It consumes a number n and a list of n2
;;numbers. It produces a list of n lists of n numbers.
;;crete-matrix : number list -> list
;;example :(create-matrix 2 (list 1 2 3 4))
;;            (list (list 1 2)
;;                  (list 3 4)))
(define (create-matrix num list)
  (cond
    [(= num 0) empty]
    [(empty? list) empty]
    [else
    (cons (num-numbers num list) (create-matrix num (rest-numbers num list)))]))
;;get num numbers from list 
;;num-numbers : num list -> list
;;example : (num-numbers 3 (list 1 2 3 5 5)) -> (list 1 2 3)
(define (num-numbers num list)
  (cond
    [(= num 0) empty]
    [(empty?  list) empty]
    [else (cons (first list) (num-numbers (- num 1) (rest list)))]))

;;get a list of number from num + 1 to the end
;;rest-numbers : num list -> list
;;example : ( rest-numbers 2 (list 1 2 3 4 5 6)) -> (list 3 4 5 6)
(define (rest-numbers num list)
  (cond
    [(= num 0) list]
    [(empty? list) empty]
    [else (rest-numbers ( - num 1) (rest list))]))

;;to remove num numbers from list and produce the rest of list
;;remove-number : num list -> list

  