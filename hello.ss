(define (squera x) (* x x))

(display (squera 5))

(define (improve guess x)
    (average guess (/ x guess)))

(define (good-enough? guess x)
    (< abs (- (squera guess) x))
     001)

(exit)