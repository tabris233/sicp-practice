#lang sicp

(define (average a b)
    (/ (+ a b) 2))

; point
(define (make-point x y) (cons x y))
(define (x-point x) (car x))
(define (y-point x) (cdr x))

; print point
(define (print-point x)
    (display "(")
    (display (x-point x))
    (display ",")
    (display (y-point x))
    (display ")"))

(print-point (make-point 1 2))
(newline)

; segment
(define (make-segment x y) (cons x y))
(define (start-segment x) (car x))
(define (end-segment x) (cdr x))

; print segment
(define (print-segment x)
    (print-point (start-segment x))
    (display "->")
    (print-point (end-segment x)))

(print-segment (make-segment (make-point 1 2) (make-point 2 3)))
(newline)

(define (midpoint-segment s)
    (make-point (average (x-point (start-segment s)) (x-point (end-segment s)))
                (average (y-point (start-segment s)) (y-point (end-segment s)))))

(print-point (midpoint-segment (make-segment (make-point 1 2) (make-point 2 3))))
(newline)