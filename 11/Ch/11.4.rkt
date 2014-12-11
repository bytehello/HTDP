;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |11.4|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; ! : number-> number
;; (!0) = 1
;; (!2) = 2
;; (!5) = 1*2*3*4*5 = 

(define(! n)
  (cond
    [(zero? n) 1]
    [else 
     (* n (! (sub1 n)))
     ]))