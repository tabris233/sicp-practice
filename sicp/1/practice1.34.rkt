#lang sicp

(define (f g) (g 2))

(display (f (lambda (x) (+ x 1000))))
(newline)
(display (f f)) ; 展开时死循环了，报错
(newline)