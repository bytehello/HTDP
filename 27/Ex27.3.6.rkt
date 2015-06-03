;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Ex27.3.6) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define TOLERANCE 0.001)
(define (g1 x) (* 1 x))

(define (integrate-dc f left right)
  (cond
    [(< (- right left) TOLERANCE) (* (- right left) (/ (+ (f left) (f right)) 2))]
    [else (+ (integrate-dc f left (/ (+ left right) 2)) (integrate-dc f (/ (+ left right) 2) right))]))

(define (trapezoid-area left right f-left f-right)
  (* (- right left)
     (/ (+ f-right f-left) 2)))

(define (integrate-dc-3 f left right)
  (local ((define m (/ (+ left right) 2))
          (define area (trapezoid-area left right (f left) (f right))))
         (cond [(or (<= area (* TOLERANCE (- right left)))
                    (<= (- right left) TOLERANCE2))
                area]
               [else (+ (integrate-dc-3 f left m)
                        (integrate-dc-3 f m right))])))