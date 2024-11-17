(double 4)
; double: undefined;
;  cannot reference an identifier before its definition
;   in module: top-level
; [,bt for context]
(display "Hello world!\n")
Hello world!
"Hello world!"
"Hello world!"
(define saying "Hello world!")
saying
"Hello world!"
(+ 1 2)
(/ 10 2)
(/ 2 3)
(define add +)
(add 123 456)
(* (- 8 (/ 30 5)) 21)
98.4
(/ 2 3)
-2/3
#t
#f
'foo(+ 1 2)
3
;; using lists in racket
  (list 1 2)
'(1 2)
 '( 1 2)
'(1 2)
 '(+ 1 2)
'(+ 1 2)
> (lambda (x) (* x 2))
> (define double (lambda (x) (* x 2)))
> (double 2)4
> (double 123.123123)
> 'lambda
'lambda
> (define name "Jane")
> (string-append "Hello" name "!")
"HelloJane!"
> (string-append "Yay" "!")
"Yay!"
> (string-append "Hello" "Jane" "!")
"HelloJane!"
> (string-append "Hello " "Jane" "!")
"Hello Jane!"
> (define greet (lambda (name)
  (string-append "Hello " name "!")))
> (greet "Morpheus")
"Hello Morpheus!"
> (greet "ABCD")
"Hello ABCD!"
> (define (greet name)
  (string-append "Hello " name "!"))
> (greet "Morgan")
"Hello Morgan!"
> (greet "f.rift")
"Hello f.rift!"
> name
"Jane"
> (let ((name "Horace"))
  (string-append "GREETINGS " name "!!!"))
"GREETINGS Horace!!!"
> (let* ((name "Steven")
  (greeting
  (string-append "Salutations " name "!!!")))
  )
; readline-input:47:0: let*: bad syntax (missing body)
;   in: (let* ((name "Steven") (greeting (string-append "Salutations " name
;     "!!!"))))
; [,bt for context]
> (let* ((name "Steven")  (greeting                                                         (string-append "Salutations " name "!!!")))                       (display greeting))
Salutations Steven!!!
> name
"Jane"
> ((lambda (name)
  (string-append "Hello " name "!"))
  (
  "Slytherin")
  )
; application: not a procedure;
;  expected a procedure that can be applied to arguments
;   given: "Slytherin"
; [,bt for context]
> ((lambda (name)                                                   (string-append "Hello " name "!"))                                                                                                  "Slytherin")                                                      )
"Hello Slytherin!"
; readline-input:65:2: read-syntax: unexpected `)` [,bt for context]
> (define num-list '( 1 2 3 ))
> (apply + num-list)
6
> (format #t "<~a> cool idea ~a!!"

Display all 2658 possibilities? (y or n)
  "Alice" "Bob")
; format: contract violation
;   expected: string?
;   given: #t
; [,bt for context]
(define (chatty-add chatty-name . nums)
  (format #t "<~a> If you add those together you get ~a!\n"
  chatty-name (apply + nums)))
(chatty-add "Sagnik" 3 4 5 6)
; format: contract violation
;   expected: string?
;   given: #t
; [,bt for context]
(define (chatty-add chatty-name . nums)                           (format  "<~a> If you add those together you get ~a!\n"           chatty-name (apply + nums)))
(chatty-add "Sagnik" 3 4 5 6)   
