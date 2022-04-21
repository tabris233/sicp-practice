#lang sicp

(define (square x) (* x x))

; 线性
(define (repeated f k)
    (define (try i)
        (lambda (x) 
            (if (= i k)
                x
                (f ((try (+ i 1)) x)))))
            
    (try 1))

; TODO 这里可以用倍增的方法做，更快一点。
; (define )

(display ((repeated square 1) 5))
(newline)
(display ((repeated square 2) 5))
(newline)
(display ((repeated square 3) 5))
(newline)
(display ((repeated square 4) 5))