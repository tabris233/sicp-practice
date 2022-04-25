#lang sicp

(define (average a b)
    (/ (+ a b) 2))

(define (abs x)
    (if (> x 0)
        x
        (- x)))
(define (square x) (* x x))

; point
(define (make-point x y) (cons x y))
(define (x-point x) (car x))
(define (y-point x) (cdr x))

; print point
(define (print-point x)
    (display "(")
    (display (x-point x))
    (display ",")
    (display (y-point x))
    (display ")"))

(print-point (make-point 1 2))
(newline)

; segment
(define (make-segment x y) (cons x y))
(define (start-segment x) (car x))
(define (end-segment x) (cdr x))

(define (length-segment s)
  (let ((dx (- (x-point (start-segment s)) (x-point (end-segment s))))
        (dy (- (y-point (start-segment s)) (y-point (end-segment s)))))
    (sqrt (+ (square dx)
             (square dy)))))

; print segment
(define (print-segment x)
    (print-point (start-segment x))
    (display "->")
    (print-point (end-segment x)))

;--------------------------------------------------------------------------------

; rectangle
; plan A: two points 
; (define (make-rectangle a b) (cons a b))
; (define (p1-rectangle r) (car r))
; (define (p2-rectangle r) (cdr r))
; (define (length-of-rectangle r)
;     (abs (- (x-point (p1-rectangle r)) (x-point (p2-rectangle r)))))
; (define (width-of-rectangle r)
;     (abs (- (y-point (p1-rectangle r)) (y-point (p2-rectangle r)))))

; rectangle
; plan A: two segments
(define (make-rectangle a b) (cons a b))
(define (s1-rectangle r) (car r))
(define (s2-rectangle r) (cdr r))
(define (length-of-rectangle r)
    (length-segment (s1-rectangle r)))
(define (width-of-rectangle r)
    (length-segment (s2-rectangle r)))

; ------------------

(define (area-rectangle r)
    (* (length-of-rectangle r)
       (width-of-rectangle r)))

(define (perimeter-rectangle r)
    (* (+ (length-of-rectangle r)
          (width-of-rectangle r))
        2))

; y
; 
; 4
;    (1,3)
; 3    +
;      | width
; 2    +---------+
;   (1,2) length (3,2)
; 1
; 
; 0    1    2    3    4    x

; (define rectangle1 (make-rectangle (make-point 1 2) (make-point 3 3)))
(define rectangle1 (make-rectangle (make-segment (make-point 1 2) (make-point 1 3))
                                   (make-segment (make-point 1 2) (make-point 3 2))))

(display (area-rectangle rectangle1))
(newline)
(display (perimeter-rectangle rectangle1))
(newline)
