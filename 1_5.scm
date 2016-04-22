#lang sicp

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; (test 0 (p)) Applicative order: (test 0 (p)) => (p) => (p) => ...
;; In applicative order the if isn't evaluated as the arguments to
;; test are first expanded. This leads to infinite loop and perhaps to
;; stackoverflow as the p-procedure calls itself indefinetly.

;; Normal order: (test 0 (p)) => (if (= 0 0) 0 (p)) => 0 In normal
;; order evaluation the test-procedure would be return 0 as the p
;; wouldn't be evaluated until when all the expressions would be
;; expanded. Now, the if-conditional can choose the zero before p
;; causes the infinite loop.
