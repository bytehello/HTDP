;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname 26.1.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define (tabulate-div n)
  (local ((define (loop i)
            (cond
              [(= i n) (list n)]
              [(= (remainder n i) 0) (cons i (loop (add1 i)))]
              [else (loop (add1 i))])))
    (loop 1)
    )
  )

(define (tabulate-div-1 n)
  (filter (lambda(x) (= (remainder n x) 0)) (build-list n add1)))