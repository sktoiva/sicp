#lang sicp

;  f(n) = n if n<3 and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n> 3

(define (f-recur n)
  (cond ((< n 3) n)
        (else (+ (f-recur (- n 1))
                 (* 2 (f-recur (- n 2)))
                 (* 3 (f-recur (- n 3)))))))

(f-recur 6)


(define (f-iter a b c counter)
  (cond ((< counter 0) a)
        (else (f-iter (+ a (* 2 b) (* 3 c))
                      a
                      b
                      (- counter 1)))))

(define (f n)
  (if (< n 3)
      n
      (f-iter 2 1 0 (- n 3))))

(f 4)
