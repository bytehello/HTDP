;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex18.1.6) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define (sort1 alon)
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
(sort1 (list 2 1 3))

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
    (sort (list 2 1 3)))
  
  (local ((define (sort_0 alon)
            (cond
              [(empty? alon) empty]
              [(cons? alon) (insert (first alon)
                                    (sort_0 (rest alon)))]))
          (define (insert_0 an alon)
            (cond
              [(empty? alon) (list an)]
              [else (cond
                      [(> an (first alon)) (cons an alon)]
                      [else (cons (first alon) (insert_0 an (rest alon)))])])))
    (sort (list 2 1 3)))
(define (sort_0 alon)
  (cond
   [(empty? alon) empty]
   [(cons?alon) (insert (first alon)
                        (sort_0 (rest alon)))]))

(define (insert_0 an alon)
  (cond 
    [(empty? alon) (list an)]
    [else (cond
            [(> an (first alon)) (cons an alon)]
            [else (cons (first alon) (insert_0 an (rst alon)))])]))
(sort_0 (list 2 1 3))
;---------------------------------------
(cond
  [(empty? (list 2 1 3)) empty]
  [(cons? alon) (insert (first (list 2 1 3))
                        (sort_0 (rest (list 2 1 3))))])


;***************************************
(equal? (sort (list 1)) (sort (list 2)))
;---------------------------------------
(equal? 
 (local ((define (mysort alon)
           (cond
             [(empty? alon) empty]
             [(cons? alon) (insert (first alon)
                                   (mysort (rest alon)))]))
         (define (insert an alon)
           (cond
             [(empty? alon) (list an)]
             [else (cond
                     [(> an (first alon)) (cons an alon)]
                     [else (cons (first alon) 
                                 (insert an (rest alon)))])])))
   (mysort (list 1))) 
 (mysort (list 2)))

(equal? 
 (local ((define (mysort_1 alon)
           (cond
             [(empty? alon) empty]
             [(cons? alon) (insert_1 (first alon)
                                   (mysort_1 (rest alon)))]))
         (define (insert_1 an alon)
           (cond
             [(empty? alon) (list an)]
             [else (cond
                     [(> an (first alon)) (cons an alon)]
                     [else (cons (first alon) 
                                 (insert_1 an (rest alon)))])])))
   (mysort (list 1))) 
 (mysort (list 2)))

(define (mysort_1 alon)
  (cond
    [(empty? alon) empty]
    [(cons? alon) (insert_1 (first alon)
                            (mysort_1 (rest alon)))]))
(define (insert_1 an alon)
  (cond
    [(empty? alon) (list an)]
    [else (cond
          [(? an (first alon)) (cons an alon)]
          [else (cons (first alon)
                      (insert_1 an (rest alon)))])]))
(equal? (mysort_1 (list 1))
        (mysort (list 2)))
(equal? (cond 
          [(empty? (list 1)) empty]
          [(cons? (list 1)) (insert_1 (first (list 1)) 
                                      (mysort_1 (rest (list 1))))]))




  



