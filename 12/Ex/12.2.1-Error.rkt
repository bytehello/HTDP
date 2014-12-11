;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 12.2.1-Error) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;draw-polygon : polygon -> true 
(define (draw-polygon a-poly)
  (connect-dots (cons a-poly (cons (first a-poly) empty ))))
;;(rest a-poly) = empty -> true

(define (connect-dots a-poly)
  (cond
    ;[(empty? (rest a-poly) true)]
    [(empty? (rest a-poly)) true]
    [else (and (draw-solid-line (first a-poly) (second a-poly) 'red)
               (connect-dots (rest a-poly)))]))
(start 100 100)
(define a (make-posn 10 10))
(define b (make-posn 10 60))
(define c (make-posn 60 10))
(define a-poly (cons a (cons b (cons c empty))))

;(first (cons a-poly (first a-poly)))
;(second (cons a-poly (first a-poly)))

(draw-polygon a-poly)