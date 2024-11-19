#lang racket

#t

#f

42

"apple"

;;check if string or not 
(string? "apple")

(string? 42)

(if #t
    "That's pretty true!"
    "Thats seems false!!!")

;; anything that is not false is truthy in scheme

(define (string-enthusiast obj)
  (if (string? obj)
      (string-append "OH MY GOSH IT'S THE STRING: " obj "!!!!")
      "HEY GIVE ME A String next time!"))

  (string-enthusiast 88)

  (string-enthusiast "banana")

;; compare things and conditionals 
( > 8 9)
(< 8 9)


(define (goldilocks n smallest-ok biggest-ok)
  (if (< n smallest-ok)
      "Too small!"
      (if (> n biggest-ok)
          "Too big!"
          "Just right!")))

(goldilocks 3 10 20)
(goldilocks 33 10 20)
(goldilocks 13 10 20)

;; this is ugly , we can do better; using cond
(define (goldilocks2 n smallest-ok biggest-ok)
(cond
  ((< n smallest-ok)
   "Too small!")
  ((> n biggest-ok)
   "Too big!")
  (else "Just right!")))

(goldilocks2 3 10 20)
