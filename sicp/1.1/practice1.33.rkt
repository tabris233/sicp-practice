#lang sicp

(define (filtered-accumulate combiner null-value term a next b valid?)
    (if (> a b)
        null-value
        (if (valid? a)
            (combiner (term a) (filtered-accumulate combiner
                                                    null-value
                                                    term
                                                    (next a)
                                                    next
                                                    b
                                                    valid?))
            (filtered-accumulate combiner
                                 null-value
                                 term
                                 (next a)
                                 next
                                 b
                                 valid?))))

; a
(define (sum-of-prime a b)

    (define (is-prime x)
        (define (is-prime-iter a)
            (if (or (> a x) (> (* a a) x))
                1
                (if (= (remainder x a) 0)
                    0
                    (is-prime-iter (+ a 1)))))

            (= (is-prime-iter 2) 1))
    
    ; (display (is-prime 1))
    ; (display (is-prime 2))
    ; (display (is-prime 3))
    ; (display (is-prime 4))
    ; (display (is-prime 5))
    ; (newline)

    (define (term a) a)
    
    (define (next a) (+ a 1))

    (filtered-accumulate +
                         0
                         term
                         a
                         next
                         b
                         is-prime))

; b
(define (f n)

    (define (gcd a b)
        (if (= (remainder a b) 0)
            b
            (gcd b (remainder a b))))

    (define (coprime a)
        (and (< a n)
             (= (gcd a n) 1)))
    
    ; (display (coprime 1))
    ; (display (coprime 2))
    ; (display (coprime 3))
    ; (display (coprime 4))
    ; (display (coprime 5))
    ; (display (coprime 6))
    ; (display (coprime 7))
    ; (display (coprime 8))
    ; (newline)

    (define (term a) a)
    (define (next a) (+ a 1))

    (filtered-accumulate *
                         1
                         term
                         2
                         next
                         (- n 1)
                         coprime))


(display "sum-of-prime(1->5): ")
(display (sum-of-prime 1 5))
(newline)
(display "factorial(9): ")
(display (f 9))
(newline)