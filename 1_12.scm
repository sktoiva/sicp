#lang sicp

;; No boundary checks
;; Assumes row and col starting from 0
(define (pascal row col)
  (cond ((or (= col 0)
             (= row col)) 1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))

(pascal 3 1)
