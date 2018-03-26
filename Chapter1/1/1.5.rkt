#lang planet neil/sicp
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

;正则序求值由于在前期只展开而不求值，在求值时候，求值步骤在x断掉，从而不对(p)求值
;应用序求值则会对参数求值，由于(p)的定义，在求值的时候陷入循环，导致程序无响应
;
;