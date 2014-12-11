;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname F->C) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (Fahrenheit->Celsius Fah)
  (* (/ 5 9) (- Fah 32))
)
;(Fahrenheit->Celsius 32) ## Cel = 0 ##
;(define (Celsius->Fahrenheit Cel)
;  (+ 32 (* Cel (/ 9 5)))
;)
;(Celsius->Fahrenheit 0) ## Fah = 32 ##
;(convert-gui Fahrenheit->Celsius)
 
;(convert-file "in.dat" Fahrenheit->Celsius "out.dat")

;(convert-repl Fahrenheit->Celsius)
