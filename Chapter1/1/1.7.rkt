#lang planet neil/sicp

(define (new-if predicate then-v esle-v)
  (cond (predicate then-v)
        (else esle-v)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (define delta (/ (abs (- (improve guess x) guess)) guess)) 
  (if (< delta 0.0000001)
      #t
      #f))

(define (improve guess x)
  (define new-guess
    (/ (+ (/ x guess) guess)
       2))
  new-guess)

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.00009)


