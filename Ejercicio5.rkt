#lang racket
;;Grupo :9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 5
;;A: R3 -> R1

;; Ingresando los parámetros: valor H y R se obtiene a(área de la forma A)
(define pi 3.141592)
(define (a1 H R) H R
  (* 2 R (sqrt (-(* H H) (* R R))))
)  
(define (a2 H R) H R
  (* pi R R 0.5)
)  
(define (a a1 a2)
  (+ a1 a2)
)