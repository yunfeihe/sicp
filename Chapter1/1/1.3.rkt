#lang planet neil/sicp
(define (max_of_three a b c)
  (cond
    ((and (<= a b) (<= a c)) (+ b c))
    ((and (<= b a) (<= b c)) (+ a c))
    ((and (<= c a) (<= c b)) (+ a b))))

(max_of_three 1 2 3)