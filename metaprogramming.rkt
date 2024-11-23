#lang racket

;;meta programming in racket

(define (make-countdown n)
  (lambda ()
    (define last-n n)
    (if (zero? n)
        0
        (begin
          (set! n (- n 1))
          last-n))))

'(if (our-test)
     (begin
       (do-thing-1)
       (do-thing-2)))

'(when (our-test)
   (do-thing-1)
   (do-thing-2))

;; code is rendering code

(define (when test . body)
  `(if ,test
       ,(cons 'begin body)))

(when '(our-test) '(do-thing-1) '(do-thing-2))

;; creatinng our own macro; for a better way 
;;https://docs.racket-lang.org/guide/pattern-macros.html#%28part._de;; fine-syntax-rule%29
;; (define-syntax-rule (when test . body)
;;   `(if ,test
;;        ,(cons 'begin body)))


(when (string? 42)
  (display "OH YEAH !!!\n")
  (display "IT'S A STRING!\n"))


;;another example
(when (string? "foo")
  (display "OH YEAH!!!\n")
  (display "IT's A STRING!\n"))


;;patternfy this to make a better version of for loops
;; can make a pattern matching using macros ; if our programming language doesnt come with it.

(define-syntax-rule (for (id lst) body ...)
  (for-each (lambda (id)
              body ...)
            lst))

(for (str '("apples" "bananas" "pears"))
   (format "I JUST LOVE ~a!!!\n"
           (string-upcase str)))

