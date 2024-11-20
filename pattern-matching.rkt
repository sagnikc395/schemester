#lang racket

(require racket/match)

;; (match '(1 2 3)
;;   ((first rest )
;;    (format #t "The first was ~a and the rest was ~a"
;;            first rest )))
;

(define animal-noises
  '((cat . mewo)
    (dog . woof)
    (sheep . baa)))

;; present 
(assoc 'cat animal-noises)
;;not present 
(assoc 'alien animal-noises)

'( 1 2 , (+ 1 2))

;;with comma it is a list item , else it would just eval.


(define (cat-entry name age)
  `(cat (name ,name)
        (age , age)))

(cat-entry "Missy" 16)

;; cat years
(define (cat-years years)
  (cond
    ( (<= years 1) ; 1 year equivalent to 15
      (* years 15))
    ((<= years 2)
     (+ 15 ( * 9 (- years 1)))) ; second year 9
    (else
     (+ 24 ( * 4 ( - years 2))))));; years after tha 4

(cat-years 16)

;; a better version

(define (cat-entry2 name age)
  `(cat (name ,name)
        (age ,age)
        (cat-age ,(cat-years age))))

(cat-entry2 "Missy" 16)
(cat-entry2 "Kelsey" 22)



;; better goldilocks
;; procedure under procedure -> Closures in Lisp 
(define (make-goldilocks smallest-ok biggest-ok)
  (define (goldilocks n)
    (cond
      ((< n smallest-ok)
       "Too Small!")
      ((> n biggest-ok)
       "Too Big!!")
      (else "Just Right!!!")
      ))
  ;; and now call the inner function
  goldilocks
  )
;; this will return a  procedure 
(make-goldilocks 10 20)

;; goldi -> a goldilocks
(define goldi (make-goldilocks 10 20))

(goldi 3)

(goldi 123)


(define c (cons 'a 'b))
(car c)

(cdr c)

;;making our own cons

(define (abstract-cons car-data cdr-data)
  (lambda (method)
    (cond
      ((eq? method 'car)
       car-data)
      ((eq? method 'cdr)
       cdr-data)
      (else (error "WTF!!!")))))


;; instace of the abstract cons
(define ac (abstract-cons 'apple 'banana))

(ac 'car)


(ac 'cdr)

;;closures are there itself the data structures; one of these procedures remembers themseleves as data and remembers them in the inner context.

(string-length "cat")

(string-length "gorilla")

(define animals '("cat" "dog" "gorilla" "salamander"))

;; mapping the animals to its string-length

(map string-length animals)


;; our own mapper

(define (symbol-length sym)
  (string-length (symbol->string sym)))


(map symbol-length '(peanut butter))

(map (lambda (sym)
       (string-length (symbol->string sym)))
     '(peanut butter))

