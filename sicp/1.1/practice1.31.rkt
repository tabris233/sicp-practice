#lang sicp

(define (even? n)
  (= (remainder n 2) 0))

; a 递归
; (define (factorial term a next b)
;     (if (> a b)
;         1
;         (* (term a)
;             (factorial term (next a) next b))))

; b 迭代
(define (factorial term a next n)
    (define (factorial-iter a ans)
        (if (> a n)
            ans
            (factorial-iter (next a)
                            (* (term a) ans))))

    (factorial-iter a 1))


(define (product n)
    (define (term a)
        (/ (+ 2
                (if (even? a)
                    a
                    (- a 1)))
            (+ 1
                (if (even? a)
                    a
                    (+ a 1)))))

    (define (next a) (+ a 1))

    (factorial term 1 next n))

(display (product 1))
(newline)
(display (product 10))
(newline)
(display (product 100))
(newline)
(display (product 1000))