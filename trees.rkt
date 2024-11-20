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
