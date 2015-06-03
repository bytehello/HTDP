;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Test ( )|) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;获取字符列表中的（）之间的字符，并且组织为list的形势
;;Example : filtersymbol : list -> list 
(define (filtersymbol list)
  (cond
    [(empty? list) empty]
    [else (cond
            [(symbol=? 'c (first list)) (cons (second list) (filter1 (rest list)))]
            [(symbol=? 'd (first list)) empty]
            [else (filtersymbol (rest list))])]))

(define (filter1 list)
  (cond
    [(empty? list) empty]
    [(symbol=? (first list) 'd) empty]
    [else (cons (first list) (filter1 (rest list)))]))
