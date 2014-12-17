;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Ex15.3.4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
;;Develop the program find. The function consumes a Web page and a symbol. 
;;It produces false, if the symbol does not occur in the body of the page or its embedded Web pages. 
;;If the symbol occurs at least once, it produces a list of the headers that are encountered on the way to the symbol.

(define-struct wp (header body))
;; find : wp symbol -> false or list
(define (find a-wp symbol)
  (cond
    [(empty? a-wp) false]
    [else (cond
            [(symbol=? symbol (wp-header a-wp)) 
     (wp-body a-wp) ]))