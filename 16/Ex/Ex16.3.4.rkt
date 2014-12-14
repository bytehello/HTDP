;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex16.3.4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp")))))
#|
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
|#

;;Exercise 16.3.4
(define (find? dir name)
  (cond
    [(empty? dir) false]
    [else (or (find-dirs (dir-dirs dir) name) (find-files (dir-files dir) name))]))

(define (find-dirs dirs name)
  (cond 
    [(empty? dirs) false]
    [else 
     (or (find? (first dirs) name) (find-dirs (rest dirs) name))]))

(define (find-files files name)
  (cond
    [(empty? files) false]
    [else
     (or (symbol=? name (file-name (first files))) (find-files (rest files) name))]))
 
;;Advance
;;consume a dir d and a file name f
;;if (find? d f0 is true then produce the path that is a list consist of two part .
;;first is the given dir and the second is the subdir contains f
;;Example
;;(find TS 'part3) -> (list TS 'read!)
(define (find d f)
  (cond
    [((find? d f)) (find-path d f)]
    [else false]))


;;find-path : dir name -> list
;;consume dir and name and produce the list of path that the dir contains name 
;;Example : (find-path TS part1) -> (list 'TS 'Text)  
(define (find-path dir name)
  (cond
    [(symbol-equal? name (dir-files dir)) (dir-name dir)]
    [else
     
  (test (dir-dirs dir) (dir-files dir) name)]))

;;comsume list of dir and list of file and name ,
;;produce a list of symbols
;;Example :
;; (test (list Text Libs) (list read1) 'read)
(define (test dirs files)
  (cond
    

(define (symbol-equal? name fs)
  (cond
    [(empty? fs) false]
    [else 
     (or (symbol=? name (first fs)) (symbol-equal? name (rest fs)))]))
