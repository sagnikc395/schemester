#lang racket


'(1 2 3)

(define num-list '(4 5 6))

(apply + num-list)

(+ 1 2 3)


;; racket uses dot for rest paraemeters without comma 
(define (chatty-add chatty-name .  nums)
  ;; string subs ; new lines are ~n for racket's format string
  (format "~a If you add those together you get ~a!~n"
          chatty-name (apply + nums)))

(chatty-add "Sagnik" 2 3 4 5)


