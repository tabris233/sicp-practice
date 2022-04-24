#lang sicp

; a 递归
; (define (accumulate combiner null-value term a next b)
;     (if (> a b)
;         null-value
;         (combiner (term a)
;                     (accumulate combiner null-value term (next a) next b))))

; b 迭代

(define (accumulate combiner null-value term a next b)
    (define (accumulate-iter a ans)
        (if (> a b)
            ans
            (accumulate-iter (next a)
                             (combiner (term a) ans))))

    (accumulate-iter a null-value))

; sum
(define (sum term a next b)
    (accumulate + 0 term a next b))

; factorial
(define (factorial term a next b)
    (accumulate * 1 term a next b))


(display "sum(1->5): ")
(display (sum (lambda (x) x) 1 (lambda (x) (+ x 1)) 5))
(newline)
(display "factorial(1->5): ")
(display (factorial (lambda (x) x) 1 (lambda (x) (+ x 1)) 5))