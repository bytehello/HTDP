;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 18.1.3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(local ((define (x y) (* 3 y)))
       (* (x 2) 5))

#|
(local ((define (x_0 y) (* 3 y)))
 (* (x_0 2) 5))

(define (x_0 y) (* 3 y))
(* (x_0 2) 5)
(* (* 3 2) 5)
(* 6 5)
30
|#

(local ((define (f c) (+ (* 9/5 c) 32)))
       (- (f 0) (f 10)))
#|
(local ((define (f_0 c) (+ (* 9/5 c) 32)))
      (- (f_0 0) (f_0 10)))
(- (+ (* 9/5 0) 32)) (f_0 10))
(- 32 50)
-18
|#

(local ((define (odd? n)
	       (cond
		 [(zero? n) false]
		 [else (even? (sub1 n))]))
	     (define (even? n)
	       (cond
		 [(zero? n) true]
		 [else (odd? (sub1 n))])))
       (even? 1))
#|
(local ((define (odd?_0 n)
 (cond
   [(zero? n) false]
   [else (even?_0 (sub1 n))]))
(define (even? n)
  (cond
    [(zero?n) true]
    [else (odd?_0 (sub1 n))])))
 (even?_0 1))
= (odd?_0 (sub1 1)
= (odd?_0 0)
false
|#
 (+ (local ((define (f x) (g (+ x 1) 22))
		(define (g x y) (+ x y)))
	  (f 10))
	555)

 #|
(define (ff_0 x) (g_0 (+ x 1) 22))
(define (g_0 x y) (+ x y))

(+ (ff_0 10) 555)
(+ (g_0 (+ 10 1) 22) 555)

(+ (g_0 11 22) 555)

(+ (+ 11 22) 555)

(+ 33 555)

588

|#
(define (h n) 
       (cond
	 [(= n 0) empty]
	 [else (local ((define r (* n n)))
		 (cons r (h (- n 1))))]))
     (h 2)
#|
(define (h_0 n) 
       (cond
	 [(= n 0) empty]
	 [else (local ((define r_0 (* n n)))
		 (cons r_0 (h_0 (- n 1))))]))
     (h_0 2)
(h_0 2)
(cond
 [false empty]
 r_0 = 4 

|#



