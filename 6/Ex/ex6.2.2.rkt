;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex6.2.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")))))
;; 红绿灯的大小
(define WIDTH 50) (define HEIGHT 160) (define BULB-RADIUS 20) (define BULB-DISTANCE 10)
;; 灯泡的位置
(define X-BULBS (quotient WIDTH 2))
(define Y-RED (+ BULB-DISTANCE BULB-RADIUS))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE (* 2 BULB-RADIUS))) 
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))
;; 绘制红灯亮时的灯光
(start WIDTH HEIGHT)
(draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
(draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
(draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)


(define (clear-buld p r c )

 ((clear-solid-disk p r c)
    (draw-circle p r c)
 )
)

(clear-buld (make-posn X-BULBS Y-RED) BULB-RADIUS 'red )