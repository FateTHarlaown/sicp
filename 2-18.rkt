#lang planet neil/sicp

(define (iter list result)
  (if (null? list)
  result
  (iter (cdr list)
        (cons (car list) result))))

(define (revers list)
  (iter list nil))

(revers (list 1 4 9 16 25))