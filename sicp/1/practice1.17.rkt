#lang sicp
(define (even? n)
  (= (remainder n 2) 0))

(define (fast-multi a n)
  (define (fast-multi-iter a b n)
    (if (= n 0)
      a
      (if (even? n)
        (fast-multi-iter a (+ b b) (/ n 2))
        (fast-multi-iter (+ a b) b (- n 1))))) ; n is odd here so we need to subtract 1

  (fast-multi-iter 0 a n))


(display (fast-multi 2 11))
(display (fast-multi 2 16))
(display (fast-multi 3 16))
(display (fast-multi 4 16))