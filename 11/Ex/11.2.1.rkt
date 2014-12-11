;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 11.2.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; hellos : number -> list
(define (repeat n symbol1)
  (cond
    [(zero? n) empty]
    [else (cons symbol1 (repeat (sub1 n) symbol1))]
    ))