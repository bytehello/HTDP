;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex16.3.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp")))))
;;Exercise 16.2.1
;;Develop the function how-many, which consumes a dir according to model 2 and produces the number of files in the dir tree.
;;(define-struct dir (n fs ds))
(define hang (make-dir 'hang 8 empty))
(define draw! (make-dir 'draw! 2 empty))
(define read! (make-dir 'read! 19 empty))
(define part1 (make-dir 'part1 99 empty))
(define part2 (make-dir 'part2 52 empty))
(define part3 (make-dir 'part3 17 empty))
(define read! (make-dir 'read! 10 empty));;When re-defined,We need to ?
(define Code (make-dir 'Code empty (list hang draw)))
(define Docs (make-dir 'Docs empty (list read!)))
(define Text (make-dir 'Text empty (list part1 part2 part3)))
(define Libs (make-dir 'Libs (list Code Docs) empty))
(define TS (make-dir 'TS (list Text Libs) (list read!)))

(make-dir
 '|.|
 empty
 (list
  (make-file '|#Ex16.2.4.rkt#2#| 1290 "")
  (make-file '|#Ex16.2.4.rkt#2#~| 10279 "")
  (make-file '|#Ex16.3.1.rkt#1#| 13525 "")
  (make-file '.DS_Store 6148 "")
  (make-file 'Ex16.2.4.rkt 625 "")
  (make-file 'Ex16.3.1.rkt 1200 "")))