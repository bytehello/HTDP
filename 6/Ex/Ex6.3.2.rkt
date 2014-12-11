;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex6.3.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")))))
(define-struct entry (name zip phone ))
  
(define a (make-entry 'Peter 214000 '13-85288))

(define-struct student (name score sex))
(define s1 (make-student 'Peter 67 'm))
;; Ex 6.3.2
(define-struct movie (title producer) )
;(movie-title (make-movie x y))
;他们之间的关系：
;movie-title用于选择出movie结构体中的 title，movie-producer用于选择结构体中的 producer，make-movie用于构造这个数据结构
;movie-title 和 movie-producer 可以使用的前提是用了make-movie来初始化数据
