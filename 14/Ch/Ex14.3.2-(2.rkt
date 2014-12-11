;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname |Ex14.3.2-(2|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
#|
(define (occurs2 wp symbol)
  (cond
    [(empty? wp)...]
    [(symbol? (first wp))...]
    [else...]))
|#
;;(list(list 'a 'b 'c) 'b (list 'a 'a 'a)
;;three clauses: one for empty page,one for page that starts with symbol,one for page that starts with web page

(define (occurs2 wp symbol)
  (cond
    [(empty? wp) 0]
    [(symbol? (first wp)) (cond
                            [(equal? (first wp) symbol) (+ 1 (occurs2 (rest wp) symbol))]
                            [else (occurs2 (rest wp) symbol)])]
    [else (+ (occurs2 (first wp) symbol) (occurs2 (rest wp) symbol))]))