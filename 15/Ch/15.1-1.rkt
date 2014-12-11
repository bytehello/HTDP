;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname 15.1-1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "draw.rkt" "teachpack" "htdp")))))
(define-struct parent (children name date eyes))
(define Gustav (make-parent empty 'Gustav 1988 'brown))
(define Fred&Eva (list Gustav))

(define Adam (make-parent empty 'Adam 1950 'yellow))
(define Dave (make-parent empty 'Dave 1955 'black))
(define Eva (make-parent Fred&Eva 'Eva 1965 'blue))
(define Fred (make-parent Fred&Eva 'Fred 1966 'pink))

(define Carl&Bettina (list Adam Dave Eva))
#|
;;blue-eyed-descendant? : parent -> boolean
;;to determine whether a-parent or its descendants have 'blue eye
(define (blue-eyed-descendant? a-parent)...)

;;Simple examples.
(boolean=? (blue-eyed-descendant? Gustav) false)
(boolean=? (blue-eyed-descendant? Eva) true)
(boolean=? (blue-eyed-descendant? Fred) false)

;;Template,selector expression for the fields in the strcture
;;Parent is 
;;a list of children,symbol for name,number for year,symbol for color
(define (blue-eyed-descendant? a-parent)
  (parent-children a-parent)
  (parent-name a-parent)
  (parent-date a-parent)
  (parent-eyes a-parent))
;;The eye color of the parent is available,we can check it
(define (blue-eyed-descendant? a-parent)
  (cond
    [(symbol=? (parent-eyes a-parent) 'blue) true]
    [else
      (parent-children a-parent)
      (parent-name a-parent)
      (parent-date a-parent)
       ]))
|#
;;we ignore date and name ,because they do nothing to do with eye color
(define (blue-eyed-descendant? a-parent)
  (cond
    [(symbol=? (parent-eyes a-parent) 'blue) true]
    [else
     (blue-eyed-children? (parent-children a-parent))
       ]))

;;if the eye color of some parent is not 'blue,we must search the list
;;of children,so we add the function to wish list

;;blue-eyed? : list-of-children -> boolean
;;to determine whether a list of children have 'blue eye
(define (blue-eyed-children? aloc)
  (cond
    [(empty? aloc) false]
    [else (or (blue-eyed-descendant? (first aloc)) (blue-eyed-children? (rest aloc))) ]
))  

  