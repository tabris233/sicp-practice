#lang sicp
(define (double f)
    (lambda (x)
        (f (f x))))

(display ((double inc) 5))
(newline)
(display (((double (double double)) inc) 5))