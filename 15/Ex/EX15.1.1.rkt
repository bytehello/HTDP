;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname EX15.1.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct parent (children name date eyes))
(define Gustav (make-parent empty 'Gustav 1988 'brown))
(define Fred&Eva (list Gustav))

(define Adam (make-parent empty 'Adam 1950 'yellow))
(define Dave (make-parent empty 'Dave 1955 'black))
(define Eva (make-parent Fred&Eva 'Eva 1965 'blue))
(define Fred (make-parent Fred&Eva 'Fred 1966 'pink))

(define Carl&Bettina (list Adam Dave Eva))

(define (blue-eyed-descendant? a-parent)
  (cond
    [(symbol=? (parent-eyes a-parent) 'blue) true]
    [else
     (blue-eyed-children? (parent-children a-parent))
       ]))

;;if the eye color of some parent is not 'blue,we must search the list
;;of children,so we add the function to wish list

;;blue-eyed? : list-of-children -> boolean
;;to determine whether a list of children have 'blue eye
(define (blue-eyed-children? aloc)
  (cond
    [(empty? aloc) false]
    [else (or (blue-eyed-descendant? (first aloc)) (blue-eyed-children? (rest aloc))) ]
))

;;==================================
;; Evaluate (blue-eyed-descendant? Eva)
(cond
  [(symbol? (parent-eyes Eva) 'blue) true]
  [else
   (blue-eyed-children? (parent-children Eva))
   ])

(cond
  [(symbol? 'blue 'blue) true]
  [else
   (blue-eyed-children? (list Gustav))])

(cond
  [true true]
  [else...])

->true