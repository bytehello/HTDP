;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex22.3.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")))))
;;Model
;;build-number : (listof  digit) -> number
;;to translate a list of digits into a number
(define (build-number list-of-digits)
  (cond 
    [(empty? list-of-digits) 0]
    [else (+ (first list-of-digits) (* 10 (build-number (rest list-of-digits))))]))

(define (check-guess guess target)
  (cond
    [(> guess target) "TooLarge"]
    [(< guess target) "TooSmall"]
    [else "Perfect"]))
  
;;View
;;the ten digits as strings
(define DIGITS
  (build-list 10 number->string))

(define digit-choosers
  (local ((define (builder i) (make-choice DIGITS)))
    (build-list 3 builder)))

(define a-msg
  (make-message "Welcome"))

;;Controller
(define (check-call-back b)
  (draw-message a-msg
  (check-guess (build-number (map choice-index digit-choosers)) target))
  )

(create-window
 (list
  (append digit-choosers (list a-msg))
  (list (make-button "Check Guess" check-call-back))))
(define target (random 1000))