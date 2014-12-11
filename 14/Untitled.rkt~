;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))

(define-struct node(ssn name left right))
;;Example : (contains-bt 12 empty) -> false
#|
(define (contains-bt number bt)
  (cond
    [(empty? bt) false]
    [(node? bt) (cond
            [( = (node-ssn bt) number) true]
            [(contains-bt number (node-left bt)) true]
            [(contains-bt number (node-right bt)) true]
            [else false]
            )]
    [else false]))
|#
(define (contains-bt number bt)
  (cond
    [(false? bt) false]
    [else 
            (or (= (node-ssn bt) number)
                (contains-bt number (node-left bt))
                (contains-bt number (node-right bt)))]))

(define bt3 (make-node 11 'Bobby (make-node 12 'Luke false false) (make-node 5 'Paul false false))) 
