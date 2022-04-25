#lang sicp

(define (gcd a b)
    (if (= (remainder a b) 0)
        b
        (gcd b (remainder a b))))


; 分数
(define (make-rat x y) 
    (let ((g (gcd x y)))
         (cons (/ x g) (/ y g))))

(define (numer x) (car x))
(define (denom x) (cdr x))

(define (add-rat a b)
    (make-rat (+ (* (numer a) (denom b))
                 (* (numer b) (denom a))) 
              (* (denom a) (denom b))))

(define (mul-rat a b)
    (make-rat (* (numer a) (numer b))
              (* (denom a) (denom b))))

(define (del-rat a b)
    (make-rat (- (* (numer a) (denom b))
                 (* (numer b) (denom a))) 
              (* (denom a) (denom b))))

; print 分数
(define (print-rat x)
    (display (numer x))
    (display "/")
    (display (denom x))
    (newline))

(print-rat (make-rat 1 3))
(print-rat (make-rat 2 4))

(define one-half (make-rat 1 2))
(define one-thrid (make-rat 1 3))

(print-rat one-half)
(print-rat one-thrid)
(print-rat (add-rat one-half one-thrid))
(print-rat (mul-rat one-half one-thrid))
(print-rat (del-rat one-half one-thrid))
