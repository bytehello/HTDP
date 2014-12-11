;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |Ex14.3.2-(1|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;; occurs1 : wp symbol -> number
;;to producer the number of times the symbol occurs in the web page
(define (occurs1 wp symbol)
  (cond
    [(empty? wp) 0]
    [(equal? (first wp) symbol) (+ 1 (occurs1 (rest wp) symbol))]
    [else (occurs1 (rest wp) symbol)]))
  
;;compute by hand
;;(occurs1 '((a b c) b (a a a) a) 'a)
;;(list (list 'a 'b 'c) 'b (list 'a 'a 'a) 'a)


#|
(occurs1 (list(list 'a 'b 'c) 'b (list 'a 'a 'a)) 'a)
(cond
  [(empty? (list (list 'a 'b 'c) 'b (list 'a 'a 'a) 'a)) 0]
  [(equal? (first (list (list 'a 'b 'c) 'b (list 'a 'a 'a) 'a)) 'a) (+ 1 (occurs1 (rest (list (list 'a 'b 'c) 'b (list 'a 'a 'a) 'a)) 'a))]
  [else (occurs1 (rest (list (list 'a 'b 'c) 'b (list 'a 'a 'a) 'a)) 'a)])

(cond
  [false 0]
  [(equal? (list 'a 'b 'c) 'a) (+ 1 (occurs1 (rest (list (list 'a 'b 'c) 'b (list 'a 'a 'a) 'a)) 'a))]
  [else (occurs1 (rest (list (list 'a 'b 'c) 'b (list 'a 'a 'a) 'a)) 'a)])

(cond 
  [false (+ 1 (occurs1 (rest (list (list 'a 'b 'c) 'b (list 'a 'a 'a) 'a)) 'a))]
  [else (occurs1 (rest (list (list 'a 'b 'c) 'b (list 'a 'a 'a) 'a)) 'a)]
  
  [else (occurs1 (list 'b (list 'a 'a 'a) 'a))]
=====================================================
  [else (cond
          [empty? (list 'b (list 'a 'a 'a) 'a) 0]
          [(equal? (first (list 'b (list 'a 'a 'a) 'a)) 'a) (+ 1 (occurs1 (rest (list 'b (list 'a 'a 'a) 'a)) 'a))]
          [else...]
          
     
       (cond
         [false ...]
         [(equal? 'b 'a)...]
         [else...]
         
       (comd
        [false...]
        [false...]
        [else...]
        
       (cond
         [else (occurs1 (rest (list 'b (list 'a 'a 'a) 'a)) 'a)]
         
         [else (occurs1 (list (list 'a 'a 'a) 'a) 'a)]
=====================================================
         (cond
           [false...]
           [(equal? (list 'a 'a 'a) 'a) ...]
           [else ...]
           
           
           [false...]
           [false...]
           [else...]
           
           
           [else (occurs1 (rest (list (list 'a 'a 'a) 'a)) 'a)]
=====================================================           
           [(occurs1 (list 'a) 'a)]
           
           (cond
             [false...]
             [(equal? (first (list 'a) 'a)) ...]
             [else...]
             
             
             [false...]
             [true...]
             [else...]
=====================================================             
             [(+ 1 (occurs1 (rest (list 'a)) 'a))]
             
             [(+ 1 (occurs1 empty 'a))]
             
             [(+ 1 (cond
                     [(empty? empty) 0]
                     [false...]
                     [false...]
                     ))]
             [(+ 1 0)]
             
             
             -> 1
  |#         