#lang sicp
(define (square x) (* x x))
(define (cube x) (* x x x))

(define (average a b)
    (/ (+ a b) 2))

(define (cube-root x)
    (define (improve guess)                   ; 题目给出的公式
        (/ (+ (/ x (square guess)) (* 2 guess))
            3))

    (define (good-enough? guess)
      (< (abs (- (cube guess) x))
         0.001))

    (define (iter guess)
        (if (good-enough? guess)
            guess
            (iter (improve guess))))

    (iter 1.0))

; (display (cube-root 27))
(display (cube-root (* 3 3 3)))
(display (cube-root (* 4 4 4)))
(display (cube-root (* 5 5 5)))
(display (cube-root (* 6 6 6)))