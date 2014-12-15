;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex18.1.12) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp")))))
;; maxi : non-empty-lon  ->  number
;; to determine the largest number on alon

(define (maxi1 alon)
  (cond
    [(empty? (rest alon)) (first alon)]
    [else (cond
	    [(> (first alon) (maxi1 (rest alon))) (first alon)]
	    [else (maxi1 (rest alon))])]))

(define (maxi alon)
  (cond
    [(empty? (rest alon)) (first alon)]
    [else (local ((define a (maxi (rest alon))))
            (cond
              [(> (first alon) (maxi (rest alon))) (first alon)]
              [else (maxi (rest alon))]))]))            
                  