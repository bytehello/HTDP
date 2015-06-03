;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |25.2|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define (sort1 alon)
  (cond 
    [(empty? alon) empty]
    [(cons? alon) (insert (first alon) (sort1 (rest alon)))]))

(define (insert n alon)
  (cond
    [(empty? alon) (cons n empty)]
    [else (cond
            [(<= n (first alon)) (cons n alon)]
            [(>  n (first alon)) (cons (first alon) (insert n (rest alon)))])]))


(define (quick-sort alon)
  (cond
    [(empty? alon) empty]
    [(empty? (rest alon)) alon]
    [else (if (< (length alon) 100) (sort1 alon)
     (append
      (quick-sort (smaller-items alon (first alon)))
      (list (first alon))
      (quick-sort (larger-items alon (first alon)))))]))

(define (smaller-items alon thershold)
  (cond
    [(empty? alon) empty]
    [else(if (< (first alon) thershold)
             (cons (first alon) (smaller-items (rest alon) thershold))
         (smaller-items (rest alon) thershold))]))

(define (larger-items alon thershold)
  (cond
    [(empty? alon) empty]
    [else(if (> (first alon) thershold)
             (cons (first alon) (larger-items (rest alon) thershold))
         (larger-items (rest alon) thershold))]))
#|
(quick-sort (list 11 8 14 7))
= 
(quick-sort (append (quick-sort (list 8 7))
                    (list 11)
                    (quick-sort (list 14))))
=
(quick-sort (append (append (quick-sort (list 7))
                            (list 8)
                            (quick-sort empty))
                                        
                                        
                    (list 11)
                    (append (quick-sort empty)
                            (list 14)
                            (quick-sort empty))))
=
(quick-sort (append (append (append (quick-sort empty)
                                    (list 7)
                                    (quick-sort empty))
                            (list 8)
                            empty)
                    (list 11)
                    (append (append empty
                                    (list 14)
                                    empty))))
=
(quick-sort (append (append (append empty
                                    (list 7)
                                    empty)
                            (list 8)
                            empty)
                    (list 11)
                    (append (list 14))))
=
(quick-sort (append (append (list 7)
                            (lsit 8))
                    (list 11)
                    (list 14)))
= 
(append (append (list 7 8)
                    (list 11)
                    (list 14)))
(list 7 8 11 14)
|#                                 

(define (general-quick-sort  a-predicate a-list)
  (local((define (sort1 alon)
  (cond 
    [(empty? alon) empty]
    [(cons? alon) (insert (first alon) (sort1 (rest alon)))]))

(define (insert n alon)
  (cond
    [(empty? alon) (cons n empty)]
    [else (cond
            [(or (a-predicate n (first alon)) (= n (first alon))) (cons n alon)]
            [(a-predicate  (first alon) n ) (cons (first alon) (insert n (rest alon)))])]))
(define (smaller-items alon)
  (filter (lambda(x) (a-predicate x (first alon))) alon))

(define (larger-items alon)
  (filter (lambda(x) (a-predicate (first alon) x )) alon))

(define (quick-sort alon)
  (cond
    [(empty? alon) empty]
    [(empty? (rest alon)) alon]
    [else (if (< (length alon) 100) (sort1 alon)
     (append
      (quick-sort (smaller-items alon ))
      (list (first alon))
      (quick-sort (larger-items alon))))]))
)
    (quick-sort a-list)))






                                        
                                        
                

