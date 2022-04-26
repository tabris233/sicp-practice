#lang sicp

(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
    (lambda (f) (lambda (x) (f ((n f) x)))))


; --------------------------------------------------------------------------------
(add-1 zero)
; ->
(add-1 (lambda (f) (lambda (x) x)))
; ->
((lambda (f) (lambda (x) (f ((n f) x)))) (lambda (f) (lambda (x) x)))
; ->
(lambda (f)
    (lambda (x)
        (f (
            ((lambda (f)        ; zero
                 (lambda (x)
                     x))
             f)
            x))))
; ->
(lambda (f)
    (lambda (x)
        (f ((lambda (x) x)
            x))))
; ->
(lambda (f) 
    (lambda (x) 
        (f x)))
; =>
(define one 
    (lambda (f) 
        (lambda (x) 
            (f x))))
; --------------------------------------------------------------------------------
(add-1 zero)
; =>
(define two
    (lambda (f) 
        (lambda (x) 
            (f (f x)))))
; --------------------------------------------------------------------------------
(define (add a b)
    (lambda (a)
        (lambda (b)
            (lambda (f)
                (lambda (x)
                    (a (f (b (f x)))))))))

; 妙啊！