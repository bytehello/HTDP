;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex18.1.3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct child (father mother name date eyes))
;; Oldest Generation:
(define Carl (make-child empty empty 'Carl 1926 'green))
(define Bettina (make-child empty empty 'Bettina 1926 'green))

;; Middle Generation:
(define Adam (make-child Carl Bettina 'Adam 1950 'yellow))
(define Dave (make-child Carl Bettina 'Dave 1955 'black))
(define Eva (make-child Carl Bettina 'Eva 1965 'blue))
(define Fred (make-child empty empty 'Fred 1966 'pink))

;; Youngest Generation: 
(define Gustav (make-child Fred Eva 'Gustav 1988 'brown))
(define Hal (make-child Gustav Eva 'Gustav 1988 'hazel)) 
;; to-blue-eyed-ancestor : ftn  ->  path or false 
;; to compute the path from a-ftn tree to a blue-eyed ancestor
(define (to-blue-eyed-ancestor a-ftn)
  (cond
    [(empty? a-ftn) false]
    [(symbol=? (child-eyes a-ftn) 'blue) empty]
    [else  (local ((define father (to-blue-eyed-ancestor(child-father a-ftn))) 
                        (define mother (to-blue-eyed-ancestor(child-mother a-ftn))))
                        (cond
                          [(and (false? father) (false? mother)) false]
                          [(false? father) (cons 'mother mother)]
                          [else (cons 'father father)] 
                          ))]))
#|
1.father produce false or path if path then the result is path
otherwise,the the result maybe in mother 
2.father produce false or path if path then the result is path
otherwise,the the result maybe in father 
|#