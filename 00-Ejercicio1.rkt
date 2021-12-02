#lang racket

;;Grupo :9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 1

(println "Bienvenido al programa que calcula factor de recuperación de capital")
(println "Normas: Escriba (FRC) Para activar el programa")
(println "A >= 0 -> Factor de Recuperacion de capital (...)")
(println "P >= 0 -> Monto de Dinero ($)")
(println "i >= 0 -> Tasa de Interes (%)")
(println "n >= 0 -> Tiempo de Ocurrencia (...)")

;;leerNumber: string -> number
;;Leer un numero en el teclado

(define (leerNumber mensaje)
  (begin (display mensaje)
         (newline)
         (read)
         )
  )

;; Ingresando los parámetros:
;;valor presente(P),
;;tasa de interés(i) y número de meses (n),
;;se obtiene A (fórmula de recuperación del capital)
;hallarA : numero x numero x numero -> numero

(define (hallarA P i n)
  (cond
    [(and (>= P 0) (>= i 0) (>= n 0))
     (* 1.0 (* P (/ (* i (expt (+ 1 i) n)) (- (expt (+ 1 i) n) 1) )))]
    [(= i 0) (print "Lo siento, i no puede ser igual a 0")]
    [else (print "Lo siento, solo se permiten valores superiores o iguales a 0")]
    )
)

;; Ingresando los parámetros:
;;valor presente(A),
;;tasa de interés(i) y número de meses (n),
;;se obtiene P (fórmula de recuperación del capital)
;hallarP : numero x numero x numero -> numero

(define (hallarP A i n)
  (cond
    [(and (>= A 0) (> i 0) (>= n 0))
     (* A (/ 
   (- (expt (+ 1 (* i 0.01)) n) 1)
   (* (* i 0.01) (expt (+ 1 (* i 0.01)) n))
   ))]
    [(= i 0) (print "Lo siento, i no puede ser igual a 0")]
    [else (print "Lo siento, solo se permiten valores superiores o iguales a 0")]
        )
  )

;;FRC: void -> number
;;Activa el programa  de Factor de recuperacion de capital

(define (FRC)
  (let ([opcion (leerNumber "¿Quieres hallar 'A' o 'P'?")])
  (cond
    [(equal? opcion "A")
      (begin
        (hallarA (leerNumber "Ingrese P")
                 (leerNumber "Ingrese i")
                 (leerNumber "Ingrese n"))
        )]
    [(equal? opcion "P")
      (begin
        (hallarP (leerNumber "Ingrese A")
                 (leerNumber "Ingrese i")
                 (leerNumber "Ingrese n"))
        )]

    
    [(number? opcion) (print "Lo siento, No se permiten numeros")]
    [else (print "Lo siento, escriba entre comillas 'A' o 'P'")])
  )
  )
