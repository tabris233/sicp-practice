#lang sicp

(define (cons x y)
    (lambda (m) (m x y)))

(define (car z)
    (z (lambda (p q) p)))

; ----------------------------------------------------------------------------------------
(define x 1)
(define y 2)

(car (cons x y))
;=>
((cons x y) (lambda (p q) p))
;=>
((lambda (p q) p) x y)
;=>
x
;=>


; ----------------------------------------------------------------------------------------

(define (cdr z)
    (z (lambda (p q) q)))