;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 512and13) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")))))
;; Ex 5.1.2
(define (check-guess guess target)
  (cond
    [(> guess target) 'TooLarge]
    [(< guess target) 'TooSmall]
    [else 'Perfect]))
(guess-with-gui check-guess)

;;Ex 5.1.3
(define (check-guess3 digit1 digit2 digit3 target)
  (check-guess (digits digit1 digit2 digit3) target))

(define (digits d1 d2 d3)
  (+ (* 100 d3)
     (* 10 d2)
     d1))

(guess-with-gui-3 check-guess3)

