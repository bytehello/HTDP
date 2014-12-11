;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex11.3.5) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; theatre-size : number
;; size of the grid of the theatre
(define theatre-size 10)

;; seat-width : number
;; size of each cell in the grid
(define seat-width 10)

(define window-size (* seat-width theatre-size))
;;draw-solid-line(posn posn)
(define (draw-v n)
  (cond
    [(zero? n) true]
    [else (and (draw-solid-line (make-posn 0 (* n seat-width))
                                (make-posn window-size (* n seat-width)))
               (draw-v (sub1 n)))]))

(define (draw-h n)
  (cond
    [(zero? n) true]
    [else (and (draw-solid-line (make-posn (* n seat-width) 0)
                                (make-posn (* n seat-width) window-size))
               (draw-h (sub1 n)))]))



(define (riot ball)
  (cond 
    [(zero? ball) true]
    [else (and (draw-solid-disk (make-posn (random window-size) (random window-size))
                           2
                           'red)
               (riot (sub1 ball)))]))
     
     













(start window-size window-size)
(draw-v theatre-size)
(draw-h theatre-size)
