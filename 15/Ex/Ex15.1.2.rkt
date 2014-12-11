;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex15.1.2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct parent (children name date eyes))
(define Gustav (make-parent empty 'Gustav 1988 'brown))
(define Fred&Eva (list Gustav))

(define Adam (make-parent empty 'Adam 1950 'yellow))
(define Dave (make-parent empty 'Dave 1955 'black))
(define Eva (make-parent Fred&Eva 'Eva 1965 'blue))
(define Fred (make-parent Fred&Eva 'Fred 1966 'pink))

(define Carl (make-parent (list Adam Dave Eva) 'Carl 1926 'green))
(define Bettina (make-parent (list Adam Dave Eva) 'Bettina 1923 'green))

(define robby (make-parent empty "Robby" 1972 'blue))
(define ted (make-parent empty "Ted" 1975 'brown))
(define pat (make-parent empty "Pat" 1978 'brown))
(define pete (make-parent empty "Pete" 1982 'brown))
(define alice (make-parent (list robby ted pat pete) "Alice" 1949 'blue))
(define bill (make-parent (list robby ted pat pete) "Bill" 1949 'brown))
(define lolly (make-parent empty "Lolly" 1951 'blue))
(define tutu (make-parent (list alice lolly) "Tutu" 1911 'brown))
;; how-far-removed : parent -> number or boolean
;;determine how far a blue-eyed descendant 
;;Example :
;; (how-far-removed Eva) -> 0
;; (how-far-removed Fred) -> false
;; (how-far-removed Carl) -> 1
(define (how-far-removed a-parent)
  (cond
    [(symbol=? (parent-eyes a-parent) 'blue) 0]
    [else
     (add1/f (how-far-children? (parent-children a-parent)))]))
     

;;how-far-children? : list-of-children -> number or boolean//;
;;to determine how far blue-eyed
;;Example:
;;(how-far-children? (list Eva)) -> 1
(define (how-far-children? aloc)
  (cond
    [(empty? aloc) false]
    [else
     (boolean/n
     (how-far-removed (first aloc))
     (how-far-children? (rest aloc)))]))
   
(define (add1/f s)
  (cond
    [(number? s) (+ 1 s)]
    [(boolean? s) s]))
(define (boolean/n a b)
  (cond
    [(number? a) a]
    [(number? b) b]
    [else false]))

