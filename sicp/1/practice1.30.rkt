#lang sicp

(define (even? n)
  (= (remainder n 2) 0))

; (define (sum term a next b)
;     (if (> a b)
;         0
;         (+ (term a)
;            (sum term (next a) next b))))

(define (sum term a next b)
  (define (sum-iter a ans)  
    (if (> a b)
        ans
        (sum-iter (next a) (+ ans (term a)))))

  (sum-iter a 0))


(define (simpson f a b n)
    (define h (/ (- b a) n))
    
    (define (y k)
        (f (+ a (* k h))))
    
    (define (factor k)
        (cond ((or (= k 0) (= k n))
                1)
              ((even? k)
                2)
              (else 
                4)))
    
    (define (term k)
        (* (factor k) (y k)))
    
    (define (next k)
        (+ k 1))

    (if (not (even? n))
        (error "n must be even")
        (* (/ h 3)
           (sum term 0 next n))))

(define (cube x) (* x x x))

(display (simpson cube 0 1 10))
(newline)
(display (simpson cube 0 1 100))
(newline)
(display (simpson cube 0 1 1000))