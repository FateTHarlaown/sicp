#lang planet neil/sicp
(define (even? n)
    (= (remainder n 2) 0))

(define (exp-iter b n a)
    (cond ((= n 0) a)
          ((even? n) (exp-iter (* b b) (/ n 2) a))
          (else (exp-iter b (- n 1) (* a b)))))

(define (exp b n)
    (exp-iter b n 1))