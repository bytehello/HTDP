;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex18.1.5) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;1.
(local ((define (x y) (* 3 y)))
  (* (x 2) 5))

(local ((define (x_0 y)(* 3 y)))
  (* (x_0 2) 5))

(define (x_0 y) (* 3 y))

(* (x_0 2) 5)

(* (* 3 2) 5)

(* 6 5)

30

;---------------------------------------
;2.
(local ((define (f c) (+ (* 9/5 c) 32)))
  (- (f 0) (f 10)))

(local ((define (f_0 c) (+ (* 9/5 c) 32)))
  (- (f_0 c) (f_0 10)))

(define (f_0 c) （+ (* 9/5 c) 32)

(- (f_0 0) (f_0 10))

(- (+ (* 9/5 0) 32) (+ (* 9/5 10) 32)

(- (+ 0 32) (+ 18 32))

(- 32 50) 

-18
;---------------------------------------
;3.
(local ((define (odd? n)
          (cond
            [(zero? n)false]
            [else (even? (sub1 n))]))
        (define (even? n)
          (cond
            [(zero? n) true]
            [else (odd? (sub1 n))])))
  (even? 1))

(local ((define (odd_0? n)
          (cond
            [(zero? n)false]
            [else (even? (sub1 n))]))
        (define (even_0? n)
          (cond
            [(zero? n) true]
            [else (odd_0? (sub1 n))])))
  (even_0? 1))

(define (odd_0? n)
  (cond 
    [(zero? n) false]
    [else (even_0? (sub1 n))]))

(define (even_0? n)
  (cond
    [(zero? n) true]
    [else (odd_0? (sub1 n))]))

(even_0? 1)

(cond
  [(zero? 1) true]
  [else (odd_0? 0)])

[else (odd_0? (sub1 1))]

(odd_0? 0)

(cond
  [(zero? 0) false]
  [else (odd_0? 0)])

(cond
  [true false]
  [else (odd_0? 0)])

;false

;---------------------------------------
;4.
(+ (local ((define (ff x) (g (+ x 1) 22))
           (define (g x y) (+ x y)))
     (ff 10))
   555)

(+ (local ((define (ff_0 x) (g_0 (+ x 1) 22))
           (define (g_0 x y) (+ x y)))
     (ff 10))
   555)

(define (ff_0 x) (g (+ x 1) 22))
(define (g_0 x y) (+ x y))

(+ (ff_0 10) 555)

(+ (g_0 (+ 10 1) 22) 555)

(+ (g_0 11 22) 555)

(+ (+ 11 22) 555)

(+ 33 555)

588
;---------------------------------------
;5.
(define (h n)
  (cond
  [(= n 0) empty]
  [else (local ((define r (* n n)))
          (cons r (h (- n 1))))]))

(h 2)

(cond 
  [(= 2 0) empty]
  [else (local ((define r (* 2 2)))
          (cons r (h (- 2 1))))])

(local ((define r  (* 2 2)))
  (cons r (h (-  2 1))))

(local ((define r_0  (* 2 2)))
  (cons r_0 (h (-  2 1))))

(define r_0 (* 2 2))
(cons r_0 (h (- 2 1)))

#| The definition of r_0 is reduced to
((define r_0 4))
 and then substituted in |#

(cons 4 (h (- 2 1)))

(cons 4 (cond
  [(= 1 0) empty]
  [else (local ((define r (* 1 1)))
          (cons r (h (- 1 1))))]))

(cons 4 (cond
  [false empty]
  [else (local ((define r (* 1 1)))
          (cons r (h (- 1 1))))]))

(cons 4 (cond
          [else (local ((define r (* 1 1)))
                  (cons r (h (- 1 1))))]))

(cons 4 (local ((define r (* 1 1)))
          (cons r (h (- 1 1)))))

(cons 4 (local ((define r_1 (* 1 1)))
          (cons r_1 (h (- 1 1)))))

(define r_1 (*  1 1))

(cons 4 (cons r_1 (h (- 1 1))))

(cons 4 (cons 1 (h 0)))

(cons 4 (cons 1 
              (cond
  [(= 0 0) empty]
  [else (local ((define r (* 0 )))
          (cons r (h (- 0 1))))])))

(cons 4 (cons 1 
               ([ture empty]
                    [else (local ((define r (* 0 )))
          (cons r (h (- 0 1))))])))

(cons 4 (cons 1 empty))

(cons 4 (list 1))

(list 4 1)
                    



          
          
          



      
      
      
      

   
   



        

