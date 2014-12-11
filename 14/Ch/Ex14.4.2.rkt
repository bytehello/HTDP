;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex14.4.2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
#|
a scheme-expression is either:
- number
- symbol
- (make-add ex ex)
- (make-mul ex ex)
|#

(define-struct add(left right))
(define-struct mul(left right))

(define (numeric? a-se)
  (cond
    [(number? a-se) true]
    [(symbol? a-se) false]
    [else (cond
            [(add? a-se) (and (numeric? (add-left a-se))
                              (numeric? (add-right a-se)))]
            [(mul? a-se) (and (numeric? (mul-left a-se))
                              (numeric? (mul-right a-se)))])]))