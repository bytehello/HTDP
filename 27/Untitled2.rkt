;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Untitled2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define (make-end posn size)
  (local ((define Pi 3.1415926))
  (make-posn (- (posn-x posn) (* size (sin (/ Pi 3))))
             (- (posn-y posn) (* size (cos (/ Pi 3)))))))

;;(start 1000 1000)

;;(draw-solid-line (make-posn 200 200) (make-end (make-posn 200 200) 50))
(define A (make-posn 200 20))
(define B (make-posn 200 220))

(define (apart a b)
  (make-posn (/ (+ (* 2 (posn-x a)) (posn-x b)) 3)  (/ (+ (* 2 (posn-y a)) (posn-y b)) 3)))

(define (apart-1 a b)
  (make-posn (/ (+ (* 2 (posn-x b)) (posn-x a)) 3)  (/ (+ (* 2 (posn-y b)) (posn-y a)) 3)))