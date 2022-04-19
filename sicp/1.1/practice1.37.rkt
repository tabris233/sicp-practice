#lang sicp

; 递归 cont-frac
(define (cont-frac n d k)
    (define (f i)
        (if (> i k)
            1
            (/ (n i)
               (+ (d i)
                  (f (+ 1 i))))))
    (f 1))

; 迭代 cont-frac
(define (cont-frac2 n d k)
    (define (f i ans)
        (if (> i k)
            ans
            (f (+ i 1)
               (/ (n i)
                  (+ (d i)
                     ans)))))
    (f 1 1))


; 输出 -----------
(display "cont-frac: ")
(display (cont-frac (lambda (i) 1)
                    (lambda (i) 1)
                    100))
(newline)

(display "cont-frac2: ")
(display (cont-frac2 (lambda (i) 1)
                     (lambda (i) 1)
                     100))
(newline)