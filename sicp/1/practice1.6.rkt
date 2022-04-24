#lang sicp
(display 10)
(display (+ 5 3 4))
(display (- 9 1))
(display (/ 6 2))
(display (+ (* 2 4) (- 4 6)))

(define a 3)
(define b (+ a 1))

(display a)
(display b)

(display (+ a b (* a b)))
(display (= a b))

(display a)
(display b)

(display (if (and (> b a) (< b (* a b)))
            b
            a))

(display (cond ((= a 4) 6)
               ((= b 4) (+ 6 7 a))
               (else 25)))

(display (+ 2 (if (> b a)
                    b
                    a)))

(display (* (cond ((> a b) a)
                  ((< a b) b)
                  (else -1))
            (+ a 1))#lang sicp
(define (square x) (* x x))

; (display (square 5))

(define (average a b)
    (/ (+ a b) 2))

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

(define (sqrt x)
    (define (improve guess)
        (average guess (/ x guess)))

    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.001))

    ; ANSWER: new-if 的参数都需要求值， if 的分支只有一个会求值。
    (define (sqrt-iter guess)
        (new-if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))))

  (sqrt-iter 1.0))

(display (sqrt 4))
(display (sqrt 9))
(display (sqrt 16))

(display (sqrt 15))
(display (sqrt 17))
)