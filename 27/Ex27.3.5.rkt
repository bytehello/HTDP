;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname Ex27.3.5) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define VL 1024)
(define (g1 i) (- i 375))
(define (g2 i) (- 375 (* 2 i)))

(define (find-root-linear f length)
  (cond
    [(= length 0) 0]
    [else (cond
            [(= (f length) 0) length]
            [else (find-root-linear f (sub1 length)) ])]))

(define (find-root-discrete f length)
    (find-root f 0 length))

(define (find-root f left right)
  (cond
    [(<= (- right left) 1) (if (< (f left) (f right)) left right)]
    [else (local ((define mid (/ (+ left right) 2)))
                  (cond
                    [(<= (f mid) 0 (f left)) (find-root f left mid)]
                    [else (find-root f mid right)]))]))

    
  


