#lang sicp

(define (fixed-point f first-guess)
    (define eps 0.00001)

    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) eps))

    (define (try old)
        (let ((new (f old)))
             (if (close-enough? old new)
                 new
                 (try new))))

    (try first-guess))


(define golden-split
    (fixed-point (lambda (x) (+ 1 (/ 1 x))) 
                  1))


(display golden-split)