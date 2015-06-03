;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Ex27.3.4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;For every midpoint m, except for the last one,
;;the function find-root needs to determine the value of (f m) twice. 
;;Validate this claim for one example with a hand-evaluation.
#|
(define (find-root f left right)
  (cond
    [(<= (- right left) TOLERANCE) left]
    [else 
     (local ((define mid (/ (+ left right) 2)))
       (cond
         [(<= (f mid) 0 (f right)) (find-root f mid right) ]
         [else
          (find-root f left mid)]))]))

|#
;; poly : number  ->  number
(define (poly x)
 (* (- x 2) (- x 4)))

;;(find-root poly 3 6)
#|
(cond
  [(<= (- 6 3) 0.1) left] >> [false ]
  [else 
   (local (define mid 4.5)
     (cond
       [(<= (f mid) 0 (f right)) ] >> (false )  ***** first compute (f mid)*****
       [else (find-root poly 3 4.5)]))])
|#
;;(find-root poly 3 4.5)
;; [false]
;; (cond [(<= (f (mid-point 3 4.5)) 0 (f right)] ******second Compute****


OK


