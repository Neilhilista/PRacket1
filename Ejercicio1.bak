#lang racket

;;Grupo :9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 1
;;A: R3 -> R1

;; Ingresando los parámetros: valor presente(P), tasa de interés(i) y número de meses (n), se obtiene A (fórmula de recuperación del capital)

(define (fórmula-factor-recuperación-capital P i n)
  (* P (/ (* i (expt (+ 1 i) n)) (- (expt (+ 1 i) n) 1) ))
)