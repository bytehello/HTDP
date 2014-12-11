;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 11.3.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; number -> list-of-number
(define (tie-dyed n)
  (cond
    [(= n 0) empty]
    [else (cons (+ (random 101) 20) (tie-dyed (sub1 n)))]))