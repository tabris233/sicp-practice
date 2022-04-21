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
(define (even? n)
  (= (remainder n 2) 0))

(define (compose f g)
    (lambda (x) 
        (f (g x))))

(define (fast-repeated f k)
    (define (try g h n)
        (if (= n 0)
            h
            (if (even? n)
                (try g (compose h g) (/ n 2))
                (try (compose g g) h (- n 1)))))  ; n is odd here so we need to subtract 1
    
    (try f f k))

(display ((repeated square 1) 5))
(newline)
(display ((repeated square 2) 5))
(newline)
(display ((repeated square 3) 5))
(newline)
(display ((repeated square 4) 5))
(newline)

(display "---------------------")
(newline)
(display ((repeated square 1) 5))
(newline)
(display ((repeated square 2) 5))
(newline)
(display ((repeated square 3) 5))
(newline)
(display ((repeated square 4) 5))