;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex10.1.5) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; eliminate-exp : ua,lotp -> list
;; 给一个上限值和一个数list，produce 一个list（其中的数据不能超过ua的list）
#|
(define (eliminate-exp ua lotp)
  (cond
    [(empty? lotp) empty]
    [else (first lotp) (eliminate-exp (rest lotp))]))
|#

#|
analysis
------------------------
1.the first case is easy
2.the second case
(first lotp) is that the fitst item of lotp,and apply "eliminate-exp" for it.
(eliminate-exp (rest lotp)) is the list that the result of the rest of "lotp"

compute for purpose
------------------------
1.其中的值不能超过ua，
|#

(define (eliminate-exp ua lotp)
  (cond
    [(empty? lotp) empty]
    [else (cond 
     [(<= (first lotp) ua) (cons (first lotp) (eliminate-exp ua (rest lotp)))]
     [else (eliminate-exp ua (rest lotp))]
     )]))
