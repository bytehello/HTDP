;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Progmatics) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;sort : list-of-numbers -> list-of-numbers
(define (sort alon)
  (cond
    [(empty? alon) empty]
    [(cons? alon) (insert (first alon) (sort (rest alon)))]))

;;insert:number list-of-numbers (sorted) -> list-of-numbers
(define (insert an alon)
  (cond
    [(empty? alon) (list an)]
    [else (cond
            [(> an (first alon)) (cons an alon)]
            [else (cons (first alon) (insert an (rest alon)))])]))


;;sort : list-of-numbers -> list-of-numbers
(define (sort alon)
  (local ((define (sort alon)
            (cond
              [(empty? alon) empty]
              [(cons? alon) (insert (first alon)
                                    (sort (rest alon)))]))
          (define (insert an alon)
            (cond
              [(empty? alon) (list an)]
              [else (cond
                      [(> an (first alon)) (cons an alon)]
                      [else (cons (first alon) (insert an (rest alon)))])])))
    (sort alon)))