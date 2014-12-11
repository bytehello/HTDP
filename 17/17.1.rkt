;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |17.1|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;Consider this second arguement as atomic
;; replace-eol-with : alon1 alon2 -> list 
;;replace empty in the alon1 with alon2
;;Example : 
;; (replace-eol-with (cons 1 (cons empty)) L) -> (cons 1 (cons L))
;; (replace-eol-with empty L) -> L
(define (replace-eol-with alon1 alon2)
  (cond
    [(empty? alon1) alon2]
    [else
     (cons (first alon1) (replace-eol-with (rest alon1) alon2))]))
