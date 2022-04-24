#lang sicp

(define (compose f g)
    (lambda (x) 
        (f (g x))))

; 平均值
(define (average a b) (/ (+ a b) 2))
; 平均阻尼
(define (average-damp f)
    (lambda (x) (average x (f x))))


; ----------------------------------------------------------------
(define (iterative-improve close-enough? improve)
    (lambda (x)
        (define (try old)
          (let ((new (improve old)))
            (if (close-enough? old new)
                new
                (try new))))
        (try x)))


(define (fixed-point f first-guess)
    (define eps 0.000001)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) eps))

    ((iterative-improve close-enough? f) first-guess))


(define (sqrt x)
        (fixed-point (average-damp (lambda (y) (/ x y)))
                     1.0))

(display (sqrt (* 2 2)))
(newline)
(display (sqrt (* 3 3)))
(newline)
(display (sqrt (* 4 4)))
(newline)
(display (sqrt (* 5 5)))
(newline)


