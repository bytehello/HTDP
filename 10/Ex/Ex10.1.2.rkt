;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex10.1.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")))))
(define (hours->wages alon)
  (cond
    [(not (check? alon)) 'Error]
    [else
     (cond
    [(empty? alon) empty]
    [else (cons ( wage (first alon)) (hours->wages (rest alon) ))])]))
(define (wage hour)
  (* hour 12 ) ) 


(define (check? alon)
  (cond 
    [(empty? alon) true]
    [else
     (and ( < (first alon) 100 ) (check?(rest alon) ) ) ]))

