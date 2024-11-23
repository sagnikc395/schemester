#lang racket

;; a scheme interpreter in scheme in 30 lines of code

(require racket/match)


;; env lookup
(define (env-lookup env name)
  (match (assoc name env)
    ((_key . val)
     val)
    (_
     (error "Variable Unbound: " name))))


;;extend
(define (extend-env env names vals)
  (if (eq? names '())
      env
      (cons (cons (car names) (car vals))
            (extend-env env (cdr names)  (cdr vals)))))

;; eval

(define (evaluate expr env)
  (match expr
    ;; support builtin types
    ((or #t #f (? number))
     expr)
    ;;quoting
    (('quote quoted-expr)
     quoted expr)
    ;;variable lookup
    ((? symbol? name)
     (env-lookup env name))
    ;; conditionals
    (('if test consequent alternate)
     (if (evaluate test env)
         (evaluate consequent env)
         (evaluate alternate env)))

    ;;lambdas (procedures)
    (('lambda (args ...) body)
     (lambda (. vals)
       (evaluate body (extend-env env args vals))))

    ;;procedure invocation (application)

    ((proc-expr arg-exprs  ...)
     (apply (evaluate proc-expr env)
            (map (lambda (arg-expr)
                   (evaluate arg-expr env))
                 arg-exprs)))))


