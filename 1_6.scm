#lang sicp

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))



;; As new-if isn't a special form, in applicative order evaluation all
;; operands are expanded before the emerging prodecure is
;; evaluated. This causes recursive sqrt-iter call to be called
;; indefinitely, as the new-if doesn't terminate the calls. With
;; regular if, this would happen.
