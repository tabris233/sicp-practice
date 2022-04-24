#lang sicp

; a 加上 b的绝对值  a+|b|
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(display (a-plus-abs-b 1 2))
(display (a-plus-abs-b 1 -2))