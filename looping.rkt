#lang racket

;;looping through things

(for-each (lambda (str)
            (format  "I JUST LOVE ~a!!!\n" str))
          '("apples" "bananas" "pears"))

;; applying a mapping to each item

(for-each (lambda (str)
            (format  "I JUST LOVE ~a!!!\n"
                    (string-upcase str)))
          '("apples" "pears" "watermelon"))

;; our own for-each

(define (for-each2 proc lst)
  (if (eq? lst '())
      'done
      (let ((item (car lst)))
      (proc item)
      (for-each proc (cdr lst)))))

(for-each2 (lambda (str)
             (format "Result ~a!!\n"
                     (string-downcase str)))
           '("apples" "bananas" "orange"))

