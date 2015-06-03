;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "gui.rkt" "teachpack" "htdp")))))
#|(create-window (list (list (make-button "Close" hide-window))))|#
#|(define a-text-field (make-text "Enter Text:"))
(define a-message (make-message "Hello World' is a silly program."))
(define (echo-message e)
  (draw-message a-message (text-contents a-text-field)))

(create-window (list (list a-text-field a-message)
                     (list (make-button "Copy Now" echo-message))))|#

(define THE-CHOICES
  (list "green" "red" "yellow"))
(define a-choice
  (make-choice THE-CHOICES))
(define a-message (make-message (first THE-CHOICES)))

(define (echo-choice e)
  (draw-message a-message (list-ref THE-CHOICES (choice-index a-choice))))

(create-window
 (list (list a-choice a-message)
       (list (make-button "Confirm Choice" echo-choice))))

