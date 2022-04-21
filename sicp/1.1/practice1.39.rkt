#lang sicp

(define (tan-cf2 n d k)
    (define (f i)
        (if (> i k)
            0
            (/ (n i)
               (+ (d i)
                  (f (+ i 1))))))
    
    (exact->inexact (f 1)))

(define (tan-cf x k)
    (tan-cf2 (lambda (i) (if (= i 1)
                             x
                             (- (* x x))))
             (lambda (i) (- (* i 2) 1))
             k))

(define (p x)
    (display "(tan ")
    (display x)
    (display " 10): ")
    (display (tan x))
    (newline)

    (display "(tan-cf ")
    (display x)
    (display " 100): ")
    (display (tan-cf x 100))
    (newline))

(p 4)
(p 10)
(p 25)