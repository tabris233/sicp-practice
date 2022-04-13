#lang sicp


; 递归方式
(define (f1 x)
    (if (< x 3)
        x
        (+ (f1 (- x 1))
           (* 2 (f1 (- x 2)))
           (* 3 (f1 (- x 3))))))

(display (f1 5)) 

; 迭代方式
(define (f2 x)
    (define (f2-iter a b c n)
        (if (= n 0)
            a
            (f2-iter b
                     c
                     (+ (* 3 a) (* 2 b) c)
                     (- n 1))))

    (f2-iter 0 1 2 x))


(display (f2 5)) 