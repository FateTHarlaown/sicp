#lang planet neil/sicp

(define (even? n)
    (= (remainder n 2) 0))

(define (odd? n)
    (= (remainder n 2) 1))

(define (same? a b)
   (if (even? a)
     (even? b)
     (odd? b)))

(define (same-parity x . y)
  (cons x
        (iter x y)))
  
(define (iter x y)
  (if (null? y)
    nil
    (if (same? x (car y))
      (cons (car y)
        (iter x (cdr y)))
      (iter x (cdr y)))))

(same-parity 1 2 3 4 5 6 7)

(same-parity 2 3 4 5 6 7)