#lang planet neil/sicp

(define (new-if predicate then-v esle-v)
  (cond (predicate then-v)
        (else esle-v)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (good-enough? guess x)
  (if (< (abs (- (* guess guess) x)) 0.001)
      #t
      #f))

(define (improve guess x)
  (define new-guess
    (/ (+ (/ x guess) guess)
       2))
  new-guess)

(define (sqrt x)
  (sqrt-iter 1. x))

(new-if (> 3 2) 1 2)
(sqrt 2)

;程序会达到最大递归次数，然后崩溃掉
;问题在于scheme自身的if是惰性求值的，只会在判断条件通过时对条件后的表达式求值
;而new-if是自定义的过程，默认是对所有参数求值，被大量递归调用时，会造成程序崩溃
;