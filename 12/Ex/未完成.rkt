;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 未完成) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
#|;;arragements : word -> (listof word)
;;
(define (arragements a-word)
  (cond 
    [(empty? a-word) (cons empty empty)]
    [else (insert-everywhere/all-words (first a-word)
                                       (arragements (rest a-word)))]))
|#

#| ---------------------------------------------
   insert-everywhere/all-words : letter list-of-words -> list-of-words
   purpose :insert a-letter into all words of list-of-words
   Example:
   'a (cons (cons 'b empty) empty) produces (cons (cons 'a (cons 'b empty)) (cons (cons 'b (cons 'a empty)) empty))
   'a (cons (cons 'b empty) (cons (cons 'c empty) empty)) produces


|#