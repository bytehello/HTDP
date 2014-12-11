;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex12.2.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct mail (from date message))

;(make-mail name n s )
;;sort-mail:list-of-mail -> list-of-mail
;;(sort-mail (cons (make-mail 'c',123,“s") (make-mail "b",234,"s") (make-mail "d",234,"s"))))
;;(string<? "c" （name (sort ( (make-mail "b",234,"s") (make-mail "d",234,"s")))
;;(string<? "c" (name ((string<? "b" (name (sort ((make-mail "d",234,"s")))
;;(string<? "c" (name ((string<? ""b (name (string<? d 
;;(cons (make-mail "b",234,"s") (make-mail 'c',123,“s"))
;; (sort empty) -> empty
(define (sort alon)
  (cond
    [(empty? alon) empty]
    [else (insert (first alon) (sort (rest alon)))]))

(define (insert n alon)
  (cond
  [(empty? alon) (cons n alon)];;忘记了这一步
  [else
   (cond
     [(string<? (mail-from n) (mail-from (first alon))) (cons n alon)]
     [else (cons (first alon) (insert n (rest alon)))])]))

