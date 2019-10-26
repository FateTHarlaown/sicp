#lang planet neil/sicp
(define (cube-ans x)
  (cube-iter 1.0 x))

(define (cube-iter guess x)
    (if (good-enough? guess x) 
        guess
        (cube-iter (improve guess x) 
               x)))

(define (improve y x)
    (/ (+ (/ x 
             (* y y)) 
          (* 2 y)) 
       3))

(define (good-enough? guess x)       
    (< (abs (- (cube guess) x))
       0.001))

(define (abs x)
    (if (< 0 x)
        x
        (- x)))

(define (cube x)
  (* x x x))

(cube-ans 64)