;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex16.3.3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp") (lib "dir.rkt" "teachpack" "htdp")))))
;;Ex16.3.3
;;Du-dir : dir -> number 

;;Advance
(define (Du-dir dir)
  (cond
    [(empty? (dir-files dir)) 0]
    [else (+  1 (account-files (dir-files dir))
             (account-dirs (dir-dirs dir)))]))
;;consume a list of files and produce number
;;account-files : a-list-of-files -> number
(define (account-files fs)
  (cond
    [(empty? fs) 0]
    [else (+   (file-size (first fs)) (account-files (rest fs)))]))

;;Consume a list of dirs and produce number
;;account-dirs : a-list-of-dirs -> number
(define (account-dirs ds)
  (cond
    ((empty? ds) 0)
    (else (+  ( + (Du-dir (first ds)) 1 ) (account-dirs (rest ds))))))