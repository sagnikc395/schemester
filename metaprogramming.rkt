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
