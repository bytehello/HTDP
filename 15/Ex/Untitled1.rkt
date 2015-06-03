;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Untitled1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define (find a-wp a-word)
  [(false? (find-document (wp-body a-wp) a-word)) false]
  [else (cons (wp-header a-wp) (find-document (wp-body a-wp) a-word))])
;; produce false or list of symbol
(define (find-document list-of-symbols a-word)
  (cond
    [(empty? list-of-symbols) false]
    [(cons? (first list-of-symbols)) (find (first list-of-symbols) a-word)]
    [(symbol=? (first list-of-symbols) a-word) ]
    [else (find-document (rest list-of-symbols) a-word)]))

(define my-wp
  (make-wp 'my-wp
           (list 'see 'my 'dog dogs-wp
                 'see 'my 'cat cats-wp)))
(define dogs-wp
  (make-wp 'dogs-wp 
           (list 'my 'dogs 'web 'page)))

(find my-wp 'web)

(find-document  (list 'see dogs-wp) 'web)
;;---> find-document
;; [(empty? ...)]false
;; [cons? (first ...) ]false
;; [(symbol=? ...]false
;;--->
;; (find-docuemnt (list dogs-wp))
;;[(empty?)]-->false
;;[(cons? dogs-wp) (find dogs-wp 'web)]
;;---> (find dogs-wp 'web)
;;---> (find-document (list 'my 'dog 'web 'page) 'web)
;; [empty] false
;; [cons? (first )]false
;; [(symbol=? 'my 'web] false
;; (find-docement (list 'dog 'web 'page) 'web)
;; --->
;; [empty]false
;; [(symbol=? 'dog 'web)]false
;; (find-document (list 'web 'page) 'web)
;; (symbol=? 'web 'web) -> (cons 'dogs-wp)

