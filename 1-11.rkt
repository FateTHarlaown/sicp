#lang planet neil/sicp
(define (f-recu x) 
    (if (< x 3) 
        x
        (+ (f-recu (- x 1))
           (* (f-recu (- x 2)) 2)
           (* (f-recu (- x 3)) 3))))

(define (f-iter x)
    (if (< x 3)
        x
        (iter 0 1 2 x)))

(define (iter a b p c)
    (if (< c 3)
        p
        (iter b
              p
              (+ (* 3 a) (* 2 b) p)
              (- c 1))))

(f-recu 3)
(f-recu 4)
(f-recu 5)

(f-iter 3)
(f-iter 4)
(f-iter 5)
