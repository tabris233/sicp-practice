#lang sicp

(define (cont-frac n d k)
    (define (f i)
        (if (> i k)
            1
            (/ (n i)
               (+ (d i)
                  (f (+ 1 i))))))
    (f 1))

(define e (+ 2
             (cont-frac (lambda (i) 1)
                    (lambda (i) 
                        (if (= (remainder (+ i 1) 3) 0)
                            (* 2 (/ (+ i 1) 3))
                            1))
                    10)))
; 输出 -----------
(display "e: ")
(display e)
(newline)