#lang racket
(define (p) (p))
(define (test x y)
  (if (= x 0)
      0
      y))

; при нормальном порядке вычислений произойдет полная подстановка, при подстановке операнда y случится ошибка
; при аппликативном порядке проверяется условие, возвращается 0