;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |18.1|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define (D x y)
  (local ((define x2 (* x x))
          (define y2 (* y y)))
    (sqrt (+ x2 y2))))
(+ (D 0 1) (D 3 4))

(define (D x y)
  (local ((define x2 (* x x))
          (define y2 (* y y)))
    (sqrt (+ x2 y2))))
(define x21 (* 0 0))
(define y21 (* 1 1))
(+ (sqrt (+ x21 y21))
   (D 3 4))

(define (D x y)
  (local ((define x2 (* x x))
          (define y2 (* y y)))
    (sqrt (+ x2 y2))))
(define x21 0)
(define y21 1)
(+ 1 
  (local ((define x2 (* 3 3))
          (define y2 (* 4 4)))
    (sqrt (+ x2 y2))))

;=
(define (D x y)
  (local ((define x2 (* x x))
          (define y2 (* y y)))
    (sqrt (+ x2 y2))))
(define x21 0)
(define y21 1)
(define x22 9)
(define y22 16)
(+ 1 (sqrt x22 y22))

          




