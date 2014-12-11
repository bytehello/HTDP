;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")))))
;;******1.数据分析
;;share 是下列二者之一
;;a.circle 是strcut (make-circle pos r)
;; 其中pos 是一个结构体，里面含有number，r是简单的number
;;b.正方形  是struct (make-square pos s)
;;其中pos  是一个结构体，里面含有number，s是简单的number
;;******2.模板
;; shape  -  > number
(define (area shape)
  (cond 
    [(circle? shape) ...]
    [(square? shape) ...]
   )
