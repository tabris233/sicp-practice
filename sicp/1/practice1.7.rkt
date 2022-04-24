#lang sicp
(define (square x) (* x x))

(define (average a b)
    (/ (+ a b) 2))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? old-guess new-guess)
  (> 0.01
    (/ (abs (- new-guess old-guess)) 
        old-guess)))

(define (try guess x)
    (if (good-enough? guess (improve guess x))
        (improve guess x)
        (try (improve guess x) x)))

(define (sqrt x)
    (try 1.0 x))

; (display (sqrt 36))
(display (sqrt 0.00009))
; (display (sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000))

; (exit)
