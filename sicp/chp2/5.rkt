#lang sicp

(define (repeated f k)
    (define (try i)
        (lambda (x) 
            (if (> i k)
                x
                (f ((try (+ i 1)) x)))))
            
    (try 1))

; base^n
(define (expt base n)
    (if (= n 0)
        1
        ((repeated (lambda (a) (* a base)) n) 1)))

(define (cons a b)
    (* (expt 2 a)
       (expt 3 b)))

(define (car z)
    (if (= (remainder z 2) 0)
        (+ 1 (car (/ z 2)))
        0))

(define (cdr z)
    (if (= (remainder z 3) 0)
        (+ 1 (car (/ z 3)))
        0))


(define x (cons 3 2))
(display x)
(newline)
(display (car x))
(newline)
(display (cdr x))
(newline)
