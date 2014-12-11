;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |6.5|) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "draw.rkt" "teachpack" "htdp")))))
;; 1.Data Analysis
;; 2.Contract
(define-struct student (last first teacher) )
;; 3.Template
;; process-student : student symbol -> ???
;(define (process-student a-student a-teachername)
;;a-student is a struct ,a-teachername is a symbol
;;process-student : student symbol -> ???
;  (student-last a-student)
;  (student-first a-student)
;  (student-teacher a-student)
 
;  )


;;(define-struct student (last first teacher) )
; 4.Example 1
;; if a-teacher's name is a-student's teacher,then return the last name
;; (check (make-student 'Wilson 'Fritz 'Harper) 'Harper)
;; excepted
;; 'Wilson
;;******************************************************
;; (check (make-student 'Wilson 'Fritz 'Lee) 'Harper)
;; excepted =
;;none
;;Example2
;;replace the a-student'name with a-teacher'name
;;(transfer (make-student 'Wilson 'Fritz 'Lee) 'Harper)
;;Excepted = 
;;(make-student 'Wilson ‘Fritz 'Harper)
;;5.Body
(define (check a-student a-teachername)
  (cond 
    [(symbol=? (student-teacher a-student) a-teachername)
     (student-last a-student)]
    [else 'none]
    
  ))

