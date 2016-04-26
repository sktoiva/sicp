#lang sicp

(define (square x)
  (* x x))

(define (good-enough? old-guess guess)
  (< (/ (abs (- old-guess guess)) guess) 0.001))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess))
     3))

(define (cube-root-iter old-guess guess x)
  (if (good-enough? old-guess guess)
      guess
      (cube-root-iter guess
                 (improve guess x)
                 x)))

(define (cube-root x)
  (cube-root-iter 0.0 1.0 x))

;; (cube-root 8)
