#lang sicp
(define (square x) (* x x))

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt a n)
  (define (fast-expt-iter a b n)
    (if (= n 0)
      a
      (if (even? n)
        (fast-expt-iter a (square b) (/ n 2))
        (fast-expt-iter (* a b) b (- n 1))))) ; n is odd here so we need to subtract 1

  (fast-expt-iter 1 a n))


(display (fast-expt 2 11))
(display (fast-expt 2 16))