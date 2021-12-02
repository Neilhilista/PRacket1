#lang racket
;;Grupo :9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 4
;;A: R3 -> R1

(println "Bienvenido al programa")
(println "Normas: Escriba (ACTIVAR) Para iniciar el programa")

(define (leerNumber mensaje)
  (begin (display mensaje)
         (newline)
         (read)))

;; Ingresando los parámetros: valor A, B y C, se obtiene a(área del terreno)

(define(area A B C)
  (cond
    [(or (string? A) (string? B ) (string? C))
    (print "Lo siento, No se admiten valores de cadena")]
   [(and (>= A 0) (>= B 0) (>= C 0))
    (+ (* B C) (* 0.5 (- A C) B))]
   [else (print "Lo siento, A B y C, tienen que ser valores mayores o igual a 0")]
   )
      )

(define (ACTIVAR)
      (begin
        (area (leerNumber "Ingrese A")
                 (leerNumber "Ingrese B")
                 (leerNumber "Ingrese C"))
        )
  )