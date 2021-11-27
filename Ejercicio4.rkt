#lang racket
;;Grupo :9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 4
;;A: R3 -> R1

;; Ingresando los parámetros: valor A, B y C, se obtiene a(área del terreno)

(define(a A B C)(+ (* B C) (* 0.5 (- A C) B))
      )