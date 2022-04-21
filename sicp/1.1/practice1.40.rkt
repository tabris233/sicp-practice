#lang sicp
(define (cube x) (* x x x))
(define (square x) (* x x))

(define (display-info guess step)
    (display "Step: ")
    (display step)
    (display " ")
    
    (display "Guess: ")
    (display guess)
    (newline))

; 寻找不动点
(define (fixed-point f first-guess)
    (define eps 0.000001)

    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) eps))

    (define (try old step)
        (display-info old step)
        (let ((new (f old)))
             (if (close-enough? old new)
                 new
                 (try new (+ step 1)))))

    (try first-guess 1))

; 函数求导
(define (deriv g)
    (define dx 0.00001)
    (lambda (x)
        (/ (- (g (+ x dx)) (g x))
           dx)))
; 平均值
(define (average a b) (/ (+ a b) 2))
; 平均阻尼
(define (average-damp f)
    (lambda (x) (average x (f x))))

; 牛顿变换
(define (newtons-transform g)
    (lambda (x)
        (- x (/ (g x)
                ((deriv g) x)))))

(define (newtons-method g guess)
    (fixed-point (newtons-transform g) guess))


; (define (newtons-method-with-average-damp g guess)
;     (fixed-point (average-damp (newtons-transform g)) guess))

(define (cubic a b c)
    (lambda (x)
        (+ (cube x)
           (* a (square x))
           (* b x)
           c)))

(define (f a b c)
    (newtons-method (cubic a b c) 
                    1))

(display (f 3 2 1))
(newline)
(display (f 2 5 5))
(newline)

; (define (sqrt x)
;     (newtons-method (lambda (y) (- (square y) x))
;                     1.0))


; (define (sqrt2 x)
;     (newtons-method-with-average-damp (lambda (y) (- (square y) x))
;                                       1.0))

; (sqrt 10000) ; Step: 12 Guess: 100.00000000000001

; (display "--------------------------------------------------------------------------------")
; (newline)
; (sqrt2 10000) ; Step: 39 Guess: 100.00000088164492