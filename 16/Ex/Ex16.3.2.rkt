;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex16.3.2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp")))))
;;How-many : dir -> number
;;Example : (how-many code) -> 2
;;(how-many docs) -> 1
;;(how-many libs) -> 0
;;(define-struct dir (n ds fs))
(define (how-many dir)
  (cond
    [(empty? (dir-files dir)) 0]
    [else
    (+ (how-many-list (dir-files dir))
     (how-many-ds (dir-dirs dir)))]))

(define (how-many-list list)
  (cond
    [(empty? list) 0]
    [(file? (first list)) (+ 1 (how-many-list (rest list)))]))

(define (how-many-ds ds)
  (cond
    [(empty? ds) 0]
    [else (+ (how-many (first ds)) (how-many-ds (rest ds)))]))