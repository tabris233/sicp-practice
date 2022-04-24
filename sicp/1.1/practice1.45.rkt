#lang sicp

; 寻找不动点
(define (fixed-point f first-guess)
    (define eps 0.000001)

    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) eps))

    (define (try old)
        (let ((new (f old)))
             (if (close-enough? old new)
                 new
                 (try new))))

    (try first-guess))

; 平均值
(define (average a b) (/ (+ a b) 2))
; 平均阻尼
(define (average-damp f)
    (lambda (x) (average x (f x))))

(define (repeated f k)
    (define (try i)
        (lambda (x) 
            (if (> i k)
                x
                (f ((try (+ i 1)) x)))))
            
    (try 1))

; ---------------------------------------

; base^n
(define (expt base n)
    (if (= n 0)
        1
        ((repeated (lambda (a) (* a base)) n) 1)))

(display (expt 2 0))
(newline)
(display (expt 2 1))
(newline)
(display (expt 2 2))
(newline)
(display (expt 2 3))
(newline)
(display (expt 3 0))
(newline)
(display (expt 3 1))
(newline)
(display (expt 3 2))
(newline)
(display (expt 3 3))
(newline)
(display "-----------------")
(newline)


; 平均阻尼 n 次
(define (average-damp-n-times f n)
    ((repeated average-damp n) f))

(display ((average-damp-n-times (lambda (x) (* x x)) 1) 10.0))
(newline)
(display ((average-damp-n-times (lambda (x) (* x x)) 10) 10.0))
(newline)
(display ((average-damp-n-times (lambda (x) (* x x)) 100) 10.0))
(newline)
(display "-----------------")
(newline)


(define (damped-nth-root n damp-times)
    (lambda (x)
            (fixed-point (average-damp-n-times (lambda (y)
                                                       (/ x
                                                          (expt y (- n 1))))
                                               damp-times)
                          1.0)))

(display ((damped-nth-root 2 1) (* 2 2)))
(newline)
(display ((damped-nth-root 2 1) (* 3 3)))
(newline)

(display ((damped-nth-root 3 1) (* 2 2 2)))
(newline)
(display ((damped-nth-root 3 1) (* 3 3 3)))
(newline)
(display "-----------------")
(newline)

;; ---------------------------------------------------------------------------------------------------
; n 次方根              1 2 3 4 5 6 7 8 ... 15 16 ... 31 32 ...
; 收敛所需的平均阻尼次数  1 1 1 2 2 2 2 3 ... 3 4 ... 4 5 ...
; 能观察出 是 floor(lg(n))

(define (lg n)
    (cond ((> (/ n 2) 1)
            (+ 1 (lg (/ n 2))))
          ((< (/ n 2) 1)
            0)
          (else
            1)))


;; -------

(define (nth-root n) 
    (damped-nth-root n (lg n)))

(display ((nth-root 2) (* 2 2)))
(newline)
(display ((nth-root 2) (* 3 3)))
(newline)

(display ((nth-root 3) (* 2 2 2)))
(newline)
(display ((nth-root 3) (* 3 3 3)))
(newline)
