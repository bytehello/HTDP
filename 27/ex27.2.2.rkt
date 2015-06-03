;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname ex27.2.2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define ((file->list-of-checks
(list 1 2.30 4.00 12.50 13.50 'NL
2 4.00 18.00 'NL 4 2.30 12.50))abs afile bas com)
  (cond
    [(empty? afile) empty]
    [else (cond
            [(symbol=? (first afile) NEWLINE) (bas afile)]
            [else (com (first afile) (abs (rest afile) bas com))])]))

(define (first-line afile) (abs afile (lambda(x) empty) cons))
(define (remove-first-line afile (abs afile rest (lambda (a d) d))))