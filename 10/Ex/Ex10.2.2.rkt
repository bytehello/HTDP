;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Ex10.2.2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct inventory-record (name price picture))
;; show-picture : inventory sybmol -> picture or false
#|
(define (show-picture aan-inv a-name)
  (cond
    [(empty? an-inv)...]
    [else
     (inv-name (first an-inv))
     (inv-price (first an-inv))
     (inv-picture (first an-inv))
     
     (show-picture (rest an-inv) a-name)]))
|#

(define (show-picture an-inv a-name)
  (cond
    [(empty? an-inv) false]
    [else
     (cond
       [(symbol=? a-name (inventory-record-name (first an-inv))) 
        (inventory-record-picture (first an-inv))]
       [else
        (show-picture (rest an-inv) a-name)])]))
(define lock-picture 'LOCK) ;; use the "Insert Image..." menu item to use a real picture
(define lock-inventory 
  (cons (make-inventory-record 'lock 1.95 lock-picture)
        empty))
(show-picture lock-inventory 'lock)
