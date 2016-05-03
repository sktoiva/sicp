#lang sicp

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10) ; 1024

(A 2 4) ; 65536

(A 3 3) ; 65536

(define (f n) (A 0 n)) ; f(n) = 2y

(define (g n) (A 1 n)) ; (A (- 1 1) (A 1 (- n 1))) -> (A 0 (A 1 (- n 1))) -> (* 2 (A 1 (- n 1)))
                       ; -> (* 2 (* 2 (A 1 (- n 2)))), until (= n 0)
                       ; therefore: f(n) = 2^n, for all n >= 0

(define (h n) (A 2 n)) ; (A (- 2 1) (A 2 (- n 1))) -> (A 1 (A 2 (-n 1))) -> 2^(A 2 (- n 1))
                       ; -> 2 ^ 2 ^ (A 2 (-n 1)), until (= n 0)
                       ; therefore,
                       ; f(n) = 2^2^2...^2, n times, for all n > 1, if n = 0, f(n) =0, if n = 1 f(n) = 2

(define (k n) (* 5 n n)) ; f(n) = 5n^2

