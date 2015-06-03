;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Ex27.1.5) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;Bezier posn posn posn -> true
(define (Bezier p1 p2 p3)
  (cond
    [(too-small? p1 p2 p3) true]
    [else
     (local ((define r2 (mid-point p1 p2))
             (define q2 (mid-point p2 p3))
             (define mid-r2-q2 (mid-point r2 q2)))
    (and
     (draw-solid-disk mid-r2-q2 1 'black)
     (Bezier p1 r2 mid-r2-q2)
     (Bezier mid-r2-q2 q2 p3)))]))


(define (draw-triangle a b c)
  (and
   (draw-solid-line a b)
   (draw-solid-line a c)
   (draw-solid-line b c)))


(define (mid-point a b)
  (make-posn
   (mid (posn-x a) (posn-x b))
   (mid (posn-y a) (posn-y b))))

(define (mid x y)
  (/  (+ x y) 2))

(define (too-small? a b c)
  (cond
    [(< (size? a b c) 0.5) true]
    [else false]))

(define (size? a b c)
  (sqrt ( + (sqr (- (posn-x a) (posn-x b))) (sqr (- (posn-y a) (posn-y b))))))

(define p1 (make-posn 50 50))
(define p2 (make-posn 150 150))
(define p3 (make-posn 250 100))
(start 300 200)
(draw-triangle p1 p2 p3)
(Bezier p1 p2 p3)
