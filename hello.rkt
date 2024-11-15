#lang racket ;; defines the language we are using

;;; comments are like this

#| block comments
can span multiple lines and ...
#|
they can be nested !
|#
|#

;;1. primitive datatypes and operators

999999999999999 ; integers
#b11 ;binary
#o11 ;octal
#x111 ; hexadecimal
3.14 ; reals
6.02e+23
1/2 ;rationals
1+2i ; complex numbers


;; functions in racket
;; for creating a literal list of data , use ' to stop it from being evaluated
'(+ 1 2) ; => (+ 1 2)

;; some arithmatic operations
(+ 1 1)
(- 8 1)
(* 10 2)
(expt 2 3)
(quotient 5 2)
(remainder 5 2)
(/ 35 7)
(/ 19 45)
(exact->inexact 1/3)
(+ 1+2i 2-3i)

;; booleans
#t
#f
(not #t)
(and 0 #f (error "doesn't get here"))
(or #f 0 (error "doesn't get here"))

;;characters
#\A
#\λ 
#\u03BB

;; strings are fixed-length array of characters
"Hello, World!"
"Benjamin \"Bugsy\" Siegel" ;; backlash is an escaping character
"Foor\tbar\41\x21\u0021\a\r\n" ;; includes C escapes, Unicode
"λx:(μα.α→α).xx" ;; can include Unicode characters


;; strings can be added too
(string-append "Hello " "world!")
;;string can be treated like a list of characters
(string-ref "Apple" 0)

;;format can be used to format strings
(format "~a can be ~a" "strings" "formatted")

;;printing is prettry easy
(printf "I'm Racket.Nice to meet you!\n")






