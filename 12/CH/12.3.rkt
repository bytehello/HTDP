;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |12.3|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; draw-polygon : polygon  ->  true
;; to draw the polygon specified by a-poly 
(define (draw-polygon a-poly)
  (connect-dots (cons (last a-poly) a-poly)))


;; connect-dots : polygon  ->  true
;; to draw connections between the dots of a-poly
(define (connect-dots a-poly)
  (cond
    [(empty? (rest a-poly)) true]
    [else (and (draw-solid-line (first a-poly) (second a-poly) 'red)
               (connect-dots (rest a-poly)))]))

;; last : polygon  ->  posn
;; to extract the last posn on a-poly
(define (last a-poly)
  (cond
    [(empty? (rest a-poly)) (first a-poly)]
    [else (last (rest a-poly))]))
(start 100 100)
(define a (make-posn 10 10))
(define b (make-posn 10 60))
(define c (make-posn 60 10))
(define a-poly (cons a (cons b (cons c empty))))
(first (cons (last a-poly) a-poly))
(second (cons (last a-poly) a-poly))