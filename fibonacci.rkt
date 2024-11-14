#lang racket

;; implementation of fibonacci in racket

(define (fib n)
  (if (<= n 2)
      1
      (+ fib (- n 1))
      (fib (- n 2))))

(fib 10)
