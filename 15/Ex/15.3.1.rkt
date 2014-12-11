;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 15.3.1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct wp (header body))

;;EXAMPLE WEB PAGES
(define dogs-wp
  (make-wp 'dogs-wp
           (list 'my 'dogs 'web 'page)))
(define cats-wp
  (make-wp 'cats-up
           (list 'my 'cats 'web 'page)))
(define my-wp
  (make-wp 'my-wp
           (list 'see 'my 'dog dogs-wp
                 'see 'my 'cat cats-wp)))

;;size-wp : wp -> number
;;determines the number of words in a web page
(define (size a-wp)
  (size-document (wp-body a-wp)))

;;size-document : web-document -> number
;;determines the number of words in a web document
(define (size-document a-wp)
  (cond
  [(empty? a-wp) 0]
  [(symbol? (first a-wp)) (+ 1 (size-document (rest a-wp)))]
  [(wp? (first a-wp)) (size-document (rest a-wp))]))