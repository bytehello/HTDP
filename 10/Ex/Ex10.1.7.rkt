;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex10.1.7) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;recall:symbol list -> list
;;消耗一个name和一个名字list，得到一个不含symbol的list.\
#|
(define (recall ty alon)
  (cond
    [(empty? alon) empty]
    [else (first alon) (recall (rest alon))]))
|#

#|
analysis
---------------------------
1.first case ....
2.second case
(first alon) ,extra the fitst item of list ,and can apply "recall" for it
(recall (rest alon)) is that the result of the rest of the "alon"

compute for purpose
---------------------------
1.we need list
2.we need list 不含有ty, 换句话说，如果遇到含有ty的item就别加到list里面啦
|#

(define (recall ty alon)
  (cond
    [(empty? alon) empty]
    [else (cond
     [(equal? (first alon) ty) (recall ty (rest alon))]
     [else (cons (first alon) (recall ty (rest alon)))]
     )]))