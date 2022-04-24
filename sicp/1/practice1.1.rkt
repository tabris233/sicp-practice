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
            (+ a 1)))