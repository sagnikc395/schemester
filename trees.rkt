#lang racket

;; building trees in racket

(define (build-tree depth)
  (if (= depth 0)
      '(0)
      (list depth
            (build-tree (- depth 1))
            (build-tree (- depth 1)))))

(require racket/pretty)

(pretty-display (build-tree 5))

;;variables mutation

(define chest 'sword)
(set! chest 'gold)

(define (make-countdown n)
  (lambda ()
    (define last-n n)
    (if (zero? n)
        0
        (begin
          (set! n (- n 1))
        last-n))))

(define ctn 12)

(make-countdown ctn)

(define ctdn (make-countdown 12))
(ctdn)


