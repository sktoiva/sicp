#lang sicp

(define (square x)
  (* x x))

;; (define (good-enough? guess x)
;;  (< (abs (- (square guess) x)) 0.001))

;; This form of good-enough is not very good for small numbers,
;; because for small numbers the test is too significant and the test
;; would return always true.

;; (sqrt 0.0004) ; should be near 0.02, but is 0.063...

;; For larger numbers, the test is too specific - depending on the
;; machine.  Because of floating point precision, the test wouldn't
;; terminate and return always false, as the difference between two
;; large numbers wouldn't be accurate enough.

;; (sqrt 10000000000000) ; doesn't terminate



;; A new implementation:

(define (good-enough? old-guess guess)
  (< (/ (abs (- old-guess guess)) old-guess) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter old-guess guess x)
  (if (good-enough? old-guess guess)
      guess
      (sqrt-iter guess
                 (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))

;; (sqrt 1000000000000)
