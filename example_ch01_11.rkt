#lang racket
(define (func-r n)
  (if (< n 3)
      n
      (+
       (func-r (- n 1))
       (func-r (- n 2))
       (func-r (- n 3)))))

(define (func-i n)
  (define (func-inner a b c x)
    (if (< x 3)
        c
        (func-inner b c (+ a b c) (- x 1))))
  (if (< n 3)
      n
      (func-inner 0 1 2 n)))
