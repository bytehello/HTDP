;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 20.1.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define (f x) x)

(cons f empty)
= (cons <var> <exp>)
= (cons <var> <var>)
is value

;;
(f f)
= (<var> <var>)
= (<exp> <exp>)
is not value

;;
(cons f (cons 10 (cons (f 10) empty)))
= (cons <var> (cons <num> (cons (<var> <num>) <lst>)))
= (<exp> <exp>)

