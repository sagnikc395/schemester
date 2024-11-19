#lang racket

(lambda (name)
  (string-append "Hello " name "!")
"Morgan")

;;(greet "f.rift")


;; let expressions defining in this context itself
(let ((name "Horace"))
  (string-append "GREETINGS" name "!!!!"))

(let* ((name "Steven")
  (greeting
   (string-append "Salutations " name "!!!\n")))
  (display-greeting))

(print name)






