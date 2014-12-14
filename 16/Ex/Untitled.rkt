;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp")))))
(define (symbol-equal? name fs)
  (cond
    [(empty? fs) false]
    [else 
     (or (symbol=? name (first fs)) (symbol-equal? name (rest fs)))]))