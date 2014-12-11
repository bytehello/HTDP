;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 10.2.1-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;总结 : else 后面应该可以合并一下的，不应该像我之前的那么幼稚复杂
(define-struct ir (name price))
(define (contains-dolls? an-inv )
  (cond
    [(empty? an-inv) false]
    [else
       (or (symbol=? (ir-name (first an-inv)) 'doll)  (contains-dolls? (rest an-inv))) 
  ]))