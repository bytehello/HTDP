;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex16.2.4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;Exercise 16.2.4
;; Show how to model a directory with two more attributes: a size and a systems
;; attribute. The former measures how much space the directory itself (as
;; opposed to its files and subdirectories) consumes; the latter specifies
;; whether the directory is recognized by the operating system.
(define-struct dir (name content size systems))

;;Exercise 16.2.5
;; Translate the file system in figure 44 into a Scheme representation according
;; model 2.
#|
A list-of-files-and-directories is either:
1.empty
2.(cons f d1) where f is file and d1 is LOFD or
3.(cons d1 d2) where d1 is dir and d2 is LOFD.
|#

(define Docs (make-dir 'Docs (list


