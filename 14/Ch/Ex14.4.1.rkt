;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex14.4.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct add(left right))
(define-struct mul(left right))

(+ 10 -10)
(make-add 10 -10)

(+ (* 20 3) 33)
(make-add (make-mul 20 3) 33)

(* 3.14 (* r r))
(make-mul 3.14 (make-mul r r))

(+ (* 9/5 c) 32)
(make-add (make-mul 9/5 c) 32)

(+ (* 3.14 (* o o)) (* 3.14 (* i i)))
(make-add (make-mul 3.14 (make-mul o o)) (make-mul 3.14 (make-mul i i)))