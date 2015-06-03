;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 20.1.2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
#|
Argue why the following sentences are legal
definitions:

(define (f x) (x 10))

(define (f x) f)

(define (f x y) (x 'a y 'b))
Solution. Th relevant part of the grammar is the following.
<def> = (define (<var> <var ... <var>) <exp>)
        |(define <var> <exp>)
        |(define-struct <var> (<var> <var>...<var>))
(*)First definition
(define (<var> <var>) (<var> <num>) 
= (define (<var> <var>) (<exp> <exp>)
= (define (<var> <var>) <exp>)
is legal

(*) Second definition
(define (f x) f)
= (define (<var> <var>) <var>)
= (define (<var> <var>) <exp>)
is legal

(*) Third definition

(define (f x y) (x 'a y 'b)
= (define (<var> <var> <var>) (<var> <sym> <var> <sym>)
= (define (<var> <var> <var>) (<var> <exp> <var> <exp>)
= (define (<var> <var> <var>) (<exp> <exp> <exp> <exp>)
= (define (<var> <var> <var>) (<exp>)
is legal
|#