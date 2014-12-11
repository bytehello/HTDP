;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define (arragements a-word)
  (cond
    [(empty? a-word) empty]
    [else (insert-everywhere (first a-word) (arragements (rest a-word)))]
;; function example : a-word : a'b'c' -> expected value : 
;; (arragements (rest a-word)) -> b'c' c'b'
;; so the relationship between (first a-word) and (rest a-word) is abc bca bac acb cba cab

 (insert-everywhere 'd 
    (cons 
     (cons 'e (cons 'r empty))
      (cons (cons 'r (cons'e empty)) empty)
    )
 )
;; (first alon) = ('e 'r) (rest alon) = ('r 'e)
(define (insert-everywhere symbol alon)
  (cond
    [(empty? alon) (cons symbol empty)]
    [else (first alon) (insert-everywhere (rest alon))]
            