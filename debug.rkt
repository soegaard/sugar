#lang racket/base

(provide report describe)

(define-syntax-rule (report var)
  (begin 
    (displayln (format "~a = ~v" 'var var) (current-error-port)) 
    var))

(require (prefix-in williams: (planet williams/describe:1:5/describe)))

(define (describe x)
  (parameterize ([current-output-port (current-error-port)])
    (williams:describe x))
  x)
