#lang racket

;; some list magic

(define a-list (list 1 2 3))
(define b-list (list 1 2 3))

;; list equality checking ; check if points to the same memory address also
(equal? a-list b-list)
(equal? a-list a-list)

;; check for content similarlity
(eq? a-list a-list)
(eq? a-list b-list)


;; most understaded is propogators papers by sussman -> property becomes suspect

(list 1 2 "Cat" 33.8 'foo)

'( 1 2 "Cat" 33.8 foo)

'( 1 2 "Cat" 33.8 'foo)

;;alternate way / sugar for making lists
(quote foo)

(quote (1 2 3))

;; empty lists 
'()

(list 1 2 3)

;; building lists with cons
(cons 1 (cons 2 (cons 3 '())))

;; check equality of 2 lists and compare them
(equal? (cons 1 (cons 2 (cons 3 '())))
        '(1 2 3))

(cons 'a '())

;; lists in this are all linked lists
;; this stuff is great for functional programming which is great and helps in understanding the structure 
(cons 'a 'b)

;;cdr -> gives us the items except the first
(cdr '(1 2 3))

(cons 'a 'b)


