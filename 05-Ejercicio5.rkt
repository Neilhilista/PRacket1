#lang racket
;;Grupo :9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 5
;;A: R3 -> R1

;; Ingresando los parámetros: valor H y R se obtiene a(área de la forma A)

(println "Bienvenido al programa")
(println "Normas: Escriba (ACTIVAR) Para iniciar el programa")

(define (leerNumber mensaje)
  (begin (display mensaje)
         (newline)
         (read)))

(define pi 3.141592)


(define (primerArea H R)
  (* 2 R (sqrt (-(* H H) (* R R))))
)


(define (segundaArea R)
  (* pi (expt R 2) 0.5)
)


(define (areaTotal H R)
  (cond
    [(or (string? H) (string? R)) (print "Lo siento, no puede ingresar cadenas en el programa")]
    [(and (>= H 0) (>= R 0)) (+ (primerArea H R) (segundaArea R))]
    [else (print "Lo siento, ni la altura (H) ni el radio (R) pueden ser negativos")]
     )
    )

(define (ACTIVAR)
      (begin
        (areaTotal (leerNumber "Ingrese H")
                 (leerNumber "Ingrese R"))
        )
  )