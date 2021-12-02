#lang racket
;;Grupo :9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 5
;;A: R3 -> R1

;; Ingresando los parámetros: valor H y R se obtiene a(área de la forma A)
(define pi 3.141592)


(define (primerArea H R)
  (* 2 R (sqrt (-(* H H) (* R R))))
)


(define (segundaArea H R) H R
  (* pi (expt R 2) 0.5)
)


(define (areaTotal primerArea segundaArea)
  (+ primerArea segundaArea)
)