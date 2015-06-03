;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname EX27.2.3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define NEWLINE 'NL)
(define-struct rr (table costs))
(define (abs-1 afile bas com)
  (cond
    [(empty? afile) empty]
    [else (cond
            [(not (number? (first afile))) (bas afile)]
            [else (com (first afile) (abs-1 (rest afile) bas com))])]))
(define (remove-first-line afile) (abs-1 afile rest (lambda (a d) d)))
(define (first-line afile) (abs-1 afile (lambda (x) empty) cons))
;;Design file->list-of-checks. The function consumes a file of numbers and 
;;outputs a list of restaurant records
;;file->list-of-checks : a file of numbers -> list of struct
(define (file->list-of-checks afon)
  (cond
    [(empty? afon) empty]
    [else (cons (make-rr (first afon) (rest-of-line (first-line afon))) (file->list-of-checks (remove-first-line afon)))]))

;;rest-of-line : afon -> list
;; consume a file of number and produce a list of number excepted of the first number
;;example : (rest-of-line (list 1 2 3 4 5 'NL)) -> (list 2 3 4 5)
(define (rest-of-line afon)
  (rest-of-line-1 (rest afon)))

;;example : (rest-of-line (list 2 3 4 5 'NL)) -> (list 2 3 4 5)
(define (rest-of-line-1 afon)
  (cond
    [(empty? afon) empty]
    [else (cond
            [(not (number? (first afon))) empty]
            [else (cons (first afon) (rest-of-line-1 (rest afon)))])]))

  


