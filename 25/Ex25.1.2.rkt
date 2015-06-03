;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex25.1.2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")))))
(define-struct ball (x y delta-x delta-y))

;;draw-and-clear : a-ball -> true
(define (draw-and-clear a-ball)
  (and
   (draw-solid-disk (make-posn (ball-x a-ball) (ball-y a-ball)) 5 'red)
   (sleep-for-a-while DELAY)
   (clear-solid-disk (make-posn (ball-x a-ball) (ball-y a-ball)) 5 'red)))

(define (move-ball a-ball)
  (make-ball (+ (ball-x a-ball) (ball-delta-x a-ball))
             (+ (ball-y a-ball) (ball-delta-y a-ball))
             (ball-delta-x a-ball)
             (ball-delta-y a-ball)))
(define WIDTH 100)
(define HEIGHT 100)
(define DELAY .1)

;;out-of-bounds a-ball -> boolean
(define (out-of-bounds? a-ball)
  (not
   (and
    (<= 0 (ball-x a-ball) WIDTH)
    (<= 0 (ball-y a-ball) HEIGHT)
    )))

(define (in-bounds? a-ball)
  (not out-of-bounds? a-ball))

;;move-until-out : a-ball -> true
(define (move-until-out a-ball)
  (cond
    [(out-of-bounds? a-ball) true]
    [else
     (and (draw-and-clear a-ball)
          (move-until-out (move-ball a-ball)))]))


;;整体思路：完成移动球的操作要必须完成 draw-and-clear 和 move-ball
;;接下来要做的就是把已经出界了的不用管他了
(define (move-balls lob)
  (cond
    [(empty? lob) true]
    [else (and
           (andmap draw-and-clear lob)
           (move-balls (map move-ball (filter in-bounds? lob))))]))
  