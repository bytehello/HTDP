;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex20.1.3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;fntn1 : num -> num
(define (fntn1 num)
  (* num 0.6))
;;fntn2 : num -> num
(define (fntn2 num)
  (* num 0.6))

;;a-function=? : function function -> bool
;;example : (a-function=? fntn1 fntn2) -> false

(define (a-function=? num)
(local ((define (a-function=? fntn1 fntn2 num)
  (cond
  [(= (fntn1 num) (fntn2 num)) true]
  [else false])))
  (a-function=? fntn1 fntn2 num)))

;;function=? determine two functions are equal
;; We can not tring all inputs ,so it is impossible;
