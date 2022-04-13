#lang sicp
(define (smallest-dividor n)
  (define (find-smallest-dividor n d)
    (cond ((< n (* d d))
            n)
          ((= (remainder n d) 0)
            d)
          (else 
            (find-smallest-dividor n (+ d 1)))))
  
  (find-smallest-dividor n 2))

(display (smallest-dividor 25))
(newline)
(display (smallest-dividor 77))
(newline)
(display (smallest-dividor 199))
(newline)
(display (smallest-dividor 1999))
(newline)
(display (smallest-dividor 19999))