;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Ex27.1.2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;*******************************************************************
;; sierpinski : posn posn posn -> true
(define (sierpinski a b c) 
  (cond
    [(too-small? a b c) true]
    [else
     (local ((define a-b (mid-point a b))
             (define a-c (mid-point a c))
             (define b-c (mid-point b c)))
     (and
      (draw-triangle a b c)
      (sierpinski a a-b a-c)
      (sierpinski a-b b b-c)
      (sierpinski a-c b-c c)))]))

(define (mid-point a b)
  (make-posn
   (mid (posn-x a) (posn-x b))
   (mid (posn-y a) (posn-y b))))

(define (mid x y)
  (/  (+ x y) 2))

;; too-small? posn posn posn -> boolean
(define (too-small? a b c)
  (cond
    [(< (size? a b c) 0.5) true]
    [else false]))

(define (size? a b c)
  (sqrt ( + (sqr (- (posn-x a) (posn-x b))) (sqr (- (posn-y a) (posn-y b))))))


(define (draw-triangle a b c)
  (and
   (draw-solid-line a b)
   (draw-solid-line a c)
   (draw-solid-line b c)))


(define A (make-posn 200 0))
(define B (make-posn 27  300))
(define C (make-posn 373 300))


;;(sierpinski A B C)


;;*******************************************************************
;;Ex27.1.2
(define CENTRE (make-posn 200 0))
(define RADIUS 200)
(define Pi 3.1415926)
;; circle-pt : number -> posn 
;; example : (circle-pt 0/360 ) -> (
(define (circle-pt factor)
  (make-posn 
   (+ (posn-x CENTRE) (* RADIUS (cos (- (* (/ Pi 180) (* factor 360)) (/ Pi 2)))))
   (+ (posn-y CENTRE) (* RADIUS (sin (- (* (/ Pi 180) (* factor 360)) (/ Pi 2)))))))

;;********************************************************************
(define-struct triangle (a b c))
(define Triangle-1 (make-triangle A B C))
(define Triangle-2 (make-triangle (make-posn 50 0)
                                  (make-posn 12 200)
                                  (make-posn 82 200)))

;;********************************************************************
;;EX 27.1.3
;; sierpinski : list -> true
(define (sierpinski-1 list-of-triangle)
  (cond
    [(empty? list-of-triangle) true]
    [else
     (local ((define a (triangle-a (first list-of-triangle)))
             (define b (triangle-b (first list-of-triangle)))
             (define c (triangle-c (first list-of-triangle))))
     (cond
       [(too-small? a b c) true]
       [else
        (local ((define a-b (mid-point a b))
                (define a-c (mid-point a c))
                (define b-c (mid-point b c)))
          (and
           (draw-triangle a b c)
           (sierpinski-1 (list (make-triangle a a-b a-c)))
           (sierpinski-1 (list (make-triangle a-b b b-c)))
           (sierpinski-1 (list (make-triangle a-c b-c c)))
           (sierpinski-1 (rest list-of-triangle))
           ))]))]))

(start 400 400)

(sierpinski-1 (list Triangle-1))
;;********************************************************************


  
  

