;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |v and p|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))

(define (area-of-disk r )
  ( * 3.14 r r ))

(define (area-of-ring outer inner)
  (- (area-of-disk outer) (area-of-disk inner)))

;(area-of-ring 3 2) ##15.7##