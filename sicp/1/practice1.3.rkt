#lang sicp
(define (sumTop2 a b c)
    (- (+ a b c)
       (if (> a b)
           (if (> b c)
               c
               b)
           (if (> a c)
               c
               a))))

(display (sumTop2 1 2 3))