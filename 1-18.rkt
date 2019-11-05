#lang planet neil/sicp
(define (even? n)
    (= (remainder n 2) 0))

(define (double p)
    (* 2 p))

(define (halve p)
    (/ p 2))

(define (mul-iter a b x)
    (cond ((= b 0) x)
          ((even? b) (mul-iter (double a) (halve b) x))
          (else (mul-iter a (- b 1) (+ x a)))))

(define (mul a b)
    (mul-iter a b 0))