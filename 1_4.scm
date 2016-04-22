#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; Because of applicative order evaluation, all operands and operators
;; are evaluated first before the resulting procedure is
;; evaluated. This leads to a situation where the if-conditional
;; evaluates to either - or + operand, depending on the value of b,
;; which is then applied to the arguments.
