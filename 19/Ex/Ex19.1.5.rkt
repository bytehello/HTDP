;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex19.1.5) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;Abstract the following two functions into a single function:
;; mini : nelon  ->  number
;; to determine the smallest number
;; on alon
(define (mini alon)
  (cond
    [(empty? (rest alon)) (first alon)]
    [else (cond
	    [(< (first alon) 
		(mini (rest alon)))
	     (first alon)]
	    [else
	     (mini (rest alon))])]))
     	
;; maxi : nelon  ->  number
;; to determine the largest number
;; on alon
(define (maxi alon)
  (cond
    [(empty? (rest alon)) (first alon)]
    [else (cond
	    [(> (first alon)
		(maxi (rest alon)))
	     (first alon)]
	    [else
	     (maxi (rest alon))])]))
;;-------------------------------->
(define (max-or-min op alon)
  (cond
    [(empty? (rest alon)) (first alon)]
    [else (local ((define resteva (max-or-min op (rest alon))))
            (pick-interseting op resteva (first alon))
            )]))
(define (pick-interseting op one another)
  (cond
    [(op one another) one]
    [else another]))
;; define mini1 and max1
(define (mini1 alon)
  (max-or-min < alon))

(define (max1 alon)
  (max-or-min > alon))



