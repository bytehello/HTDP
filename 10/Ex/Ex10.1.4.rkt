;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex10.1.4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;First exercise
;;convert-euro:list -> list
;;consume a list of dollars ,and convert them into a list of euro
#|
(define (convert-euro list-of-dollars)
  (cond 
    [(empty? list-of-dollars) empty]
    [else (first list-of-dollars) (convert-eurp (rest list-of-dollars))]))
|#
;------------------------
#|
*************************
analysis
first case,just empty.
in the second case,
1.(first list-of-dollars) just extra the first item of the list of dollars,and can apply
the function convert-euro for it.
2.(convert-eurp (rest list-of-dollars))
(rest list-of-dollars) just the rest of the list ,and (convert-eurp (rest list-of-dollars)) compute the result of
rest
**************************
consider the purpose
we need a list of euro,
for euro,and a euro  = 1.2 dollar
for list,just use "cons"
so go on.
|#
(define (convert-euro list-of-dollars)
  (cond 
    [(empty? list-of-dollars) empty]
    [else (cons (/ (first list-of-dollars) 1.2) (convert-euro (rest list-of-dollars)))]))
;;---------------------------------------------------------------------------------------
;;Second exercise
;; convert-euro-1 : list-of-dollars exchange-rate -> list-of-euro
;;(你妹呀，写蹩脚的英文累！（字体还蛮好看的）
;;purpose：参数为：美元list 和 一个 汇率 ，输出为欧元list，easy，具体分析跟上面差不多。就不多说了。直接敲代码！！！
(define (convert-euro-1 rate list-of-dollars)
  (cond
    [(empty? list-of-dollars) empty]
    [else (cons (/ (first list-of-dollars) rate) (convert-euro (rest list-of-dollars)))]))
