;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define Pi 3.1415926)
;;savannah : a b -> true
(define (savannah a b)
  (cond
    [(too-small? a b) true]
    [else
     (local (
             (define a-b-1/3-start (apart a b ))
             (define a-b-1/3-end (make-end a-b-1/3-start (/ (size a b)3 )))
             (define a-b-2/3-start (apart-1 a b ))
             (define a-b-2/3-end (make-end  a-b-2/3-start (/ (size a b)3 )))
                          )
       (and
         
        (draw-solid-line a b)
        (savannah a-b-1/3-start a-b-1/3-end)
        (savannah a-b-2/3-start a-b-2/3-end)
        ))]))
(define Pi/3 (/ Pi 3))
(define (make-end posn size)
  (make-posn (+ (posn-x posn) (* size (cos Pi/3)))
             (+ (posn-y posn) (* size (sin Pi/3)))))

(define (size a b)
  (sqrt ( + (sqr (- (posn-x a) (posn-x b))) (sqr (- (posn-y a) (posn-y b))))))

(define (apart a b)
  (make-posn (/ (+ (* 2 (posn-x a)) (posn-x b)) 3)  (/ (+ (* 2 (posn-y a)) (posn-y b)) 3)))

(define (apart-1 a b)
  (make-posn (/ (+ (* 2 (posn-x b)) (posn-x a)) 3)  (/ (+ (* 2 (posn-y b)) (posn-y a)) 3))) 

(define (too-small? a b)
  (cond
    [(< (size a b) 1) true]
    [else false]))


(define (circle-pt factor CENTRE RADIUS)
  (make-posn 
   (+ (posn-x CENTRE) (* RADIUS (cos (- (* (/ Pi 180) (* factor 360)) (/ Pi 2)))))
   (+ (posn-y CENTRE) (* RADIUS (sin (- (* (/ Pi 180) (* factor 360)) (/ Pi 2)))))))
;;to determine an end point of a start point
;;make-end : posn -> posn
 
  
(start 1000 1000)
(define A (make-posn 500 20))
(define B (make-posn 500 420))
(define sizeAB (size A B))
(savannah A B)
