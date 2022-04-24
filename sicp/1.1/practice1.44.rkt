#lang sicp

(define (square x) (* x x))

(define (smooth f) 
(define dx 0.00001)
    (lambda (x)
            (/ (+ (f (- x dx))
                  (f x)
                  (f (+ x dx)))
                3)))

(display ((smooth square) 5))
(newline)


(define (smooth-n-times f n)
    (define (try g i)
        (if (> i n)
            g
            (try (smooth g) (+ i 1))))

    (try f 1))

(display ((smooth-n-times square 10) 5))
(newline)

(define (repeated f k)
    (define (try i)
        (lambda (x) 
            (if (> i k)
                x
                (f ((try (+ i 1)) x)))))
            
    (try 1))

(define (smooth-n-times-with-repeated f k)
    (let ((n-times-smooth (repeated smooth k)))
         (n-times-smooth f)))


(display ((smooth-n-times-with-repeated square 10) 5))
(newline)