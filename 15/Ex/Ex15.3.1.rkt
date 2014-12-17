;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex15.3.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct wp (header body))
;; EXAMPLE WEB PAGES
(define dogs-wp
  (make-wp 'dogs-wp 
           (list 'my 'dogs 'web 'page)))

(define cats-wp
  (make-wp 'cats-wp
           (list 'my 'cats 'web 'page)))

(define my-wp
  (make-wp 'my-wp
           (list 'see 'my 'dog dogs-wp
                 'see 'my 'cat cats-wp)))
;; Determine the number of words in body of  WP
;; size : a-ap -> number
(define (size a-wp)
  (cond
    [(empty? a-wp) 0]
    [else (size-document (wp-body a-wp))]))

(define (size-document wp-body)
  (cond
    [(empty? wp-body) 0]
    [(symbol? (first wp-body)) (+ 1 (size-document (rest wp-body)))]
    [(wp? (first wp-body)) (size (first wp-body))]))

