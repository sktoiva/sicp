#lang sicp

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-largest-squares x y z)
  (cond
   ((> x y z) (sum-of-squares x y))
   ((< x y z) (sum-of-squares y z))
   (else (sum-of-squares x z))))
