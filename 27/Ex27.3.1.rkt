;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 27.3.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define TOLERANCE 0.01)

(define (find-root f left right)
  (cond
    [(<= (- right left) TOLERANCE) left]
    [else 
     (local ((define mid (/ (+ left right) 2)))
       (cond
         [(<= (f mid) 0 (f right)) (find-root f mid right) ]
         [else
          (find-root f left mid)]))]))

;; poly : number  ->  number
(define (poly x)
 (* (- x 2) (- x 4)))

(find-root poly 3 6)
;;[false left]
;;[(define mid 4.5]
;;(<= 1.25 0 8) false
;;(find-root 3 4.5)
