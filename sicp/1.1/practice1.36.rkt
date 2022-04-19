#lang sicp

(define (fixed-point f first-guess)
    (define eps 0.00001)

    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) eps))

    (define (try old)
        (display old)
        (newline)

        (let ((new (f old)))
             (if (close-enough? old new)
                 new
                 (try new))))

    (try first-guess))

(display "xx 1000")
(newline)
(define (xx a)
    (fixed-point (lambda (x) (/ (log a)
                                (log x))) 
                  2))

(display (xx 1000))
(newline)

; --------------------------
; 用了平均阻尼之后 迭代次数明显少了。
(define (xx2 a)
    (fixed-point (lambda (x) (/ (+ x 
                                   (/ (log a)
                                      (log x)))
                                2)) 
                  2))

(display "-----------")
(newline)
(display "xx2 1000")
(newline)
(display (xx2 1000))
