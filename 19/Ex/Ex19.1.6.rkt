;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex19.1.6) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define (sort1 alon)
  (local ((define (sort alon)
            (cond
              [(empty? alon) empty]
              [else (insert (first alon) (sort (rest alon)))]))
    (define (insert an alon)
      (cond
        [(empty? alon) (list an)]
        [else (cond
                [(> an (first alon)) (cons an alon)]
                [else (cons (first alon) (insert an (rest alon)))])]))) 
    (sort alon)))

(define (sort2 op alon)
  (local ((define (sort alon)
            (cond
              [(empty? alon) empty]
              [else (insert op (first alon) (sort (rest alon)))]))
    (define (insert op an alon)
      (cond
        [(empty? alon) (list an)]
        [else (cond
                [(op an (first alon)) (cons an alon)]
                [else (cons (first alon) (insert op an (rest alon)))])]))) 
    (sort alon)))

(define (ascend-sort alon)
  (sort2 < alon))
(define (descend-sort alon)
  (sort2 > alon))

