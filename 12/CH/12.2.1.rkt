;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 12.2.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; draw-polygon : polygon -> true
;; to draw the polygon specified by a-poly
(define (draw-polygon a-poly)
  (connect-dots (add-to-end a-poly (first a-poly))))

;;connect-dots : polygin -> true
;; to draw connections between dots of a-poly
(define (connect-dots a-poly)
  (cond
    [(empty? (rest a-poly)) true]
    [else (and (draw-solid-line (first a-poly) (second a-poly) 'red)
               (connect-dots (rest a-poly)))]))

;;add-to-end : polygon posn -> polygon
;;to add a-posn to the end of a-poly
(define (add-to-end a-poly a-posn)
  (cond
    [(empty? a-poly) (cons a-posn empty)]
    [else (cons (first a-poly) (add-to-end (rest a-poly) a-posn))]))