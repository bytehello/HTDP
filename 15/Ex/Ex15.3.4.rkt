;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex15.3.4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;Develop the program find. The function consumes a Web page and a symbol. 
;;It produces false, if the symbol does not occur in the body of the page or its embedded Web pages. 
;;If the symbol occurs at least once, it produces a list of the headers that are encountered on the way to the symbol.

(define-struct wp (header body))

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
;; find : wp symbol -> false or list
;; find : wp symbol -> los-or-false
(define (find a-wp a-word)
  (append-or-false (list (wp-header a-wp))
                   (find-in-document (wp-body a-wp) a-word)))

;; find-in-body : document symbol -> los-or-false
(define (find-in-document a-page a-word)
  (cond
    [(empty? a-page) false]
    [(symbol? (first a-page)) (cond 
                                [(symbol=? (first a-page) a-word) empty]  
                                [else (find-in-document (rest a-page) a-word)])]
    [else (local ((define in-subpage (find (first a-page) a-word)))
            (cond
              [(false? in-subpage) (find-in-document (rest a-page) a-word)]
              [else in-subpage]))]))


;; append-or-false : list-of-symbols los-or-false -> los-or-false
;; appends y to x if y is not false
(define (append-or-false x y)
  (cond
    [(boolean? y) y]
    [else (append x y)]))