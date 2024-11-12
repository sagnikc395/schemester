#lang racket
(display "hello world!\n")

(define saying "Hello World!\n")
saying 

; prcedures 
(+ 1 2) 
(/ 10 2)
(/ 2 3)

(define add +)
(add 1 2)

(* (- 8 (/ 30 5)) 21)
(/ 30 5)

(- 8 6)

(* 2 21)
; true 
#t 
; false
#f 
;string 
"Hello World"

; not a string -> symbol 
'foo

; making a list 
'(1 2)
; + turns into data !!!
'(+ 1 2)

;; creating our own procedures 
(lambda (x) (* x 2))

(define double (lambda (x) (* x 2)))

(double 144)
(double 256)

;; list of symbol lambda 
'(lambda (x) (* x 2))
;;code and data are not far apart !

(define name "Jane")
(string-append "Hello " name "!")
(string-append "Yay" "!")

(define greet (lambda (name)
    (string-append "Hello " name "!")))

greet

(greet "Sagnik")

