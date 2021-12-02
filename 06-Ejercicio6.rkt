#lang racket
;;Grupo :9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 6
;;A: R1 -> R1

;; Ingresando a, se calcula Seno(a/2)

(define (senoMedioAngulo angulo)
  (sqrt (/ (- 1 (cos angulo)) 2 )))