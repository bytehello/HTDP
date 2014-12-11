;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex&Ch12.4.2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;回头再搞！！！！！实在是太恶心了！！
;; Example : 
#|(arragements (list 'e 'd 'r))
(first (list 'e 'd 'r)) -> 'e
(arragements (rest (list 'e 'd 'r)) -> (list (list 'd 'r) (list 'r 'd))

|#


(define (arragements a-word)
  (cond
    [(empty? a-word) empty]
    [else (insert-everywhere/in-all-words (first a-word)
                                          (arragements (rest a-word)))]))
;; Example:
;;(insert-everywhere/in-all-words 'e  (list (list 'd 'r )(list 'r 'd))) should producer -> 
;;(list (list 'e 'd 'r) (list ‘d 'e 'r)(list 'd 'r 'e)
;;      (list 'e 'r 'd) (list 'r 'e 'd)(list 'r 'd 'e))
;; (first alon) -> (list 'd 'r)
;;(insert-everywhere/in-all-words 'e (rest alon)) should producers -> 
;;                                (list (list 'e 'r 'd) (list 'r 'e 'd)(list 'r 'd 'e))

(define (insert-everywhere/in-all-words s alon)
  (cond
    [(empty? alon) (cons s empty)]
    [else  (append (insert-everywhere s (first alon)) (insert-everywhere/in-all-words s (rest alon)))]))

;; Example:
;; (insert-everywhere 'd (list 'e 'r)) -> (list (list 'd 'e 'r) (list 'e 'd 'r) (list 'e 'r 'd))
;;(first (list 'e 'r)) -> 'e
;;(insert-everywhere 'd (rest (list 'e 'r))) -> (list (list 'd 'r) (list 'r 'd))
(define (insert-everywhere s alon)
  (cond
    [(empty? alon) (list (list s))]
    [else
      (cons (cons s alon) (add-at-beginning 
                           (first alon) 
                           (insert-everywhere s (rest alon))))]))

#|
(define (insert-everywhere a-letter a-word)
  (cond
    ((empty? a-word) (list (list a-letter)))
    (else (cons (cons a-letter a-word) 
		(add-at-beginning (first a-word)
				  (insert-everywhere a-letter (rest a-word)))))))
|#
;; add-beginning : sybmol list -> list
;; Example : (add-beginning 'e (list (list 'd 'r) (list 'r 'd))) ->                                                              
;; (first (list (list 'd 'r) (list 'r 'd))) -> (list 'd 'r)
;; (add-beginning 'e (list 'r 'd))          -> (list (list 'e 'r 'd))
;;(add-beginning 'e empty) -> 
(define (add-at-beginning s alon)
  (cond
    ((empty? alon) empty)
    (else
     (cons (cons s (first alon)) (add-at-beginning s (rest alon))))))
  


                                
                              




