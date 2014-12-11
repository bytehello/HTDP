;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex18.1.11) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct star (name instrument))
;;last-occurrence : symbol list-of-star -> star or false
(define (last-occurrence s alostars)
  (cond
    [(empty? alostars) false]
    [else (local ((define r (last-occurrence (rest alostars))))
            (cond
              [(star? r) r]
              [(symbol? (star-name (first alostars)) s) (first alostars)]
              [else false]
              ))]))
   
(last-occurrence 'Matt
  (list (make-star 'Matt 'violin)
        (make-star 'Matt 'radio)))

;Evaluate by hand
(last-occurrence 'Matt
                 (list (make-star 'Matt 'violin)
                       (make-star 'Matt 'radio)))
;------------------------------------------------
(cond
  [(empty? (list (make-star 'Matt 'violin)
                 (make-star 'Matt 'radio))) 
   false]
  [else 
   (local 
     ((define r 
        (last-occurrence 'Matt 
                         (rest (list (make-star 'Matt 'violin)
                                     (make-star 'Matt 'radio))))))
     (cond
       [(star? r) r]
       [(symbol=? 
         (star-name (first (list (make-star 'Matt 'violin)
                                 (make-star 'Matt 'radio)))) 
         'Matt) 
        (first (list (make-star 'Matt 'violin)
                     (make-star 'Matt 'radio)))]
       [else false]))])
;-----------------------------------------------------------
(cond
  [false 
   false]
  [else 
   (local 
     ((define r 
        (last-occurrence 'Matt 
                         (rest (list (make-star 'Matt 'violin)
                                     (make-star 'Matt 'radio))))))
     (cond
       [(star? r) r]
       [(symbol=? 
         (star-name (first (list (make-star 'Matt 'violin)
                                 (make-star 'Matt 'radio)))) 
         'Matt) 
        (first (list (make-star 'Matt 'violin)
                     (make-star 'Matt 'radio)))]
       [else false]))])
;-----------------------------------------------------------
(cond
  [else 
   (local 
     ((define r 
        (last-occurrence 'Matt 
                         (rest (list (make-star 'Matt 'violin)
                                     (make-star 'Matt 'radio))))))
     (cond
       [(star? r) r]
       [(symbol=? 
         (star-name (first (list (make-star 'Matt 'violin)
                                 (make-star 'Matt 'radio)))) 
         'Matt) 
        (first (list (make-star 'Matt 'violin)
                     (make-star 'Matt 'radio)))]
       [else false]))])

;-----------------------------------------------------------
(local 
  ((define r 
     (last-occurrence 'Matt 
                      (rest (list (make-star 'Matt 'violin)
                                  (make-star 'Matt 'radio))))))
  (cond
    [(star? r) r]
    [(symbol=? 
      (star-name (first (list (make-star 'Matt 'violin)
                              (make-star 'Matt 'radio)))) 
      'Matt) 
     (first (list (make-star 'Matt 'violin)
                  (make-star 'Matt 'radio)))]
    [else false]))
;-----------------------------------------------------------
(local 
  ((define r_0 
     (last-occurrence 'Matt 
                      (rest (list (make-star 'Matt 'violin)
                                  (make-star 'Matt 'radio))))))
  (cond
    [(star? r_0) r_0]
    [(symbol=? 
      (star-name (first (list (make-star 'Matt 'violin)
                              (make-star 'Matt 'radio)))) 
      'Matt) 
     (first (list (make-star 'Matt 'violin)
                  (make-star 'Matt 'radio)))]
    [else false]))

;first local-expression lifted
(define r_0 
  (last-occurrence 'Matt 
                   (rest (list (make-star 'Matt 'violin)
                               (make-star 'Matt 'radio)))))

(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
#| We now go through the steps to reduce r_0. Because we are not
allowed to redefine the same function, this reduction process
is commented out. 

(define r_0 
  (last-occurrence 'Matt 
                   (list (make-star 'Matt 'radio))))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])

;-----------------------------------------------------------
;reducing the right-hand side of definition r_0
(define r_0 
  (cond
    [(empty? (list (make-star 'Matt 'radio))) 
     false]
    [else (local 
            ((define r (last-occurrence 'Matt (rest (list (make-star 'Matt 'radio))))))
            (cond
              [(star? r) r]
              [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
               (first (list (make-star 'Matt 'radio)))]
              [else false]))]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])

;-----------------------------------------------------------
;reducing the right-hand side of definition r_0
(define r_0 
  (cond
    [false 
     false]
    [else (local 
            ((define r (last-occurrence 'Matt (rest (list (make-star 'Matt 'radio))))))
            (cond
              [(star? r) r]
              [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
               (first (list (make-star 'Matt 'radio)))]
              [else false]))]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])

;-----------------------------------------------------------
;reducing the right-hand side of definition r_0
(define r_0 
  (cond
    [else (local 
            ((define r (last-occurrence 'Matt (rest (list (make-star 'Matt 'radio))))))
            (cond
              [(star? r) r]
              [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
               (first (list (make-star 'Matt 'radio)))]
              [else false]))]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])

;-----------------------------------------------------------
;reducing the right-hand side of definition r_0
(define r_0 
  (local 
    ((define r (last-occurrence 'Matt (rest (list (make-star 'Matt 'radio))))))
    (cond
      [(star? r) r]
      [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
       (first (list (make-star 'Matt 'radio)))]
      [else false])))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
;reducing the right-hand side of definition r_0
(define r_0 
  (local 
    ((define r_1 (last-occurrence 'Matt (rest (list (make-star 'Matt 'radio))))))
    (cond
      [(star? r_1) r_1]
      [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
       (first (list (make-star 'Matt 'radio)))]
      [else false])))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
;Here the second local-expression is lifted

(define r_1 (last-occurrence 'Matt (rest (list (make-star 'Matt 'radio)))))
(define r_0 
  (cond
    [(star? r_1) r_1]
    [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
     (first (list (make-star 'Matt 'radio)))]
    [else false]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])

;-----------------------------------------------------------
reducing the right-hand side of definition r_1
(define r_1 
  (cond
    [(empty? empty) 
     false]
    [else (local 
            ((define r (last-occurrence 'Matt (rest empty))))
            (cond
              [(star? r) r]
              [(symbol=? (star-name (first empty)) 'Matt) 
               (first empty)]
              [else false]))]))
(define r_0 
  (cond
    [(star? r_1) r_1]
    [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
     (first (list (make-star 'Matt 'radio)))]
    [else false]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
reducing the right-hand side of definition r_1
(define r_1 
  (cond
    [true 
     false]
    [else (local 
            ((define r (last-occurrence 'Matt (rest empty))))
            (cond
              [(star? r) r]
              [(symbol=? (star-name (first empty)) 'Matt) 
               (first empty)]
              [else false]))]))
(define r_0 
  (cond
    [(star? r_1) r_1]
    [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
     (first (list (make-star 'Matt 'radio)))]
    [else false]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
Here r-1 has been completely reduced and can now be
substituted in |#
(define r_1 false)
#|
(define r_0 
  (cond
    [(star? r_1) r_1]
    [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
     (first (list (make-star 'Matt 'radio)))]
    [else false]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
reducing the right-hand side of definition r_0
(define r_0 
  (cond
    [(star? false) r_1]
    [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
     (first (list (make-star 'Matt 'radio)))]
    [else false]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
reducing the right-hand side of definition r_0

(define r_0 
  (cond
    [false r_1]
    [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
     (first (list (make-star 'Matt 'radio)))]
    [else false]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
reducing the right-hand side of definition r_0

(define r_0 
  (cond
    [(symbol=? (star-name (first (list (make-star 'Matt 'radio)))) 'Matt) 
     (first (list (make-star 'Matt 'radio)))]
    [else false]))
(cond
  [(star? r_0) r_0]y
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
reducing the right-hand side of definition r_0

(define r_0 
  (cond
    [(symbol=? (star-name (make-star 'Matt 'radio)) 'Matt) 
     (first (list (make-star 'Matt 'radio)))]
    [else false]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
reducing the right-hand side of definition r_0

(define r_0 
  (cond
    [(symbol=? 'Matt 'Matt) 
     (first (list (make-star 'Matt 'radio)))]
    [else false]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
reducing the right-hand side of definition r_0

(define r_0 
  (cond
    [true
     (first (list (make-star 'Matt 'radio)))]
    [else false]))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
reducing the right-hand side of definition r_0

(define r_0 
  (first (list (make-star 'Matt 'radio))))
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------
Here r_0 has been completey reduced and can be 
substituted in |#

;(define r_0 (make-star 'Matt 'radio))                        
(cond
  [(star? r_0) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------

(cond
  [(star? (make-star 'Matt 'radio)) r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------

(cond
  [true r_0]
  [(symbol=? 
    (star-name (first (list (make-star 'Matt 'violin)
                            (make-star 'Matt 'radio)))) 
    'Matt) 
   (first (list (make-star 'Matt 'violin)
                (make-star 'Matt 'radio)))]
  [else false])
;-----------------------------------------------------------

r_0
;-----------------------------------------------------------

(make-star 'Matt 'radio)



