;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")))))
(define (series-local op)
  (local ((define (series n)
            (cond
              [( = n 0) (op n)]
              [else (+ (op n) (series (- n 1)))])))
    series))