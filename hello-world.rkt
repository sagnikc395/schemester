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
