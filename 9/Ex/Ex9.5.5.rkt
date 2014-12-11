;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex9.5.5) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")))))
;; check-guess3 :a-list-of-digits -> symbol
;;(check-guess3 empty 1 ) false
;;(check-guess3 (cons 2 (cons 1 empty  ) 12 ) perfect
;;(check-guess3 (cons 2 (cons 3 (cons 1 empty ))) 500) toosmall

(define (check-guess3 a-list-of-digits n )
  (check-guess (convert a-list-of-digits) n))

(define (convert a-list-of-digits)
  (cond 
    [(empty? a-list-of-digits) 0]
    [else ( + (first a-list-of-digits) ( * 10 (convert (rest a-list-of-digits ))))]
  ))

(define (check-guess guess hidden )
  (cond
    [(empty? guess) false]
    [else
     (cond
     [(> guess hidden) 'TooLager]
     [(< guess hidden) 'TooSmall]
     [(= guess hidden) 'Perfect] ) ]) ) 
