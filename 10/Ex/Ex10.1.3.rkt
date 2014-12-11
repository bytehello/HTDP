;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex10.1.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; list->list
;; example 
;; (convert (cons 12 empty ) -- > (cons C )
(define (convertFC FList)
  (cond 
    [ (empty? FList) empty]
    [ else  (cons (Fahrenheit->Celsius(first FList)) (convertFC (rest FList))) ]
  )
)

(define (Fahrenheit->Celsius Fah)
  (* (/ 5 9) (- Fah 32))
)
  