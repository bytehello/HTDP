;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9.3|) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")))))
;; contains-dolls?: list-of-symbols ->boolean
;; to determine whether the symbol 'doll occurs on list-of-symbols
;;(define (contains-dolls? a-list-of-symbols)
 
(boolean=? (contains-dolls (cons 'ball empty)) false) false
(boolean=? (contains-dolls (cons 'doll empty)) true)   true
  
(boolean=? (contains-dolls (cons 'tel (cons 'ball empty ) ) ) false ) false
(boolean=? (contains-dolls (cons 'bal (cons 'doll empty) ) ) true ) true
  
;;----->  
(define (contains-dolls? a-list-of-symbols )
  (cond
    [(empty? a-list-of-symbols)...]
    [else...(first a-list-of-symbols)...(rest a-list-of-symbols) ] 
  ))
  
(define (contains-dolls? a-list-of-symbols )
  (cond
    [(empty? a-list-of-symbols) false]
    [else
     (cond
       [(symbol=? (first a-list-of-symbols) 'doll ) true ]  
       [else ( contains-dollars (rest a-list-of-symbols)  ) ])] 
  ))
  