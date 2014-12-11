;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex2.2.5) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor mixed-fraction #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (f1 n)
  (+ 10 (* n n)))


(define (f2 n )
  (+ 20 (* (/ 1 2) (* n n))))


(define (f3 n)
  (- 2 (/ 1 n)))

(f1 2)
(f1 9)
(f2 2)
(f2 9)
(f3 2)
(f3 9)