#lang racket

;;Grupo :9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 1
;;A: R3 -> R1

(println "Bienvenido al programa que calcula factor de recuperación de capital")
(println "Normas:")
(println "A >= 0 -> Factor de Recuperacion de capital (...)")
(println "P >= 0 -> Monto de Dinero ($)")
(println "i >= 0 -> Tasa de Interes (%)")
(println "n >= 0 -> Tiempo de Ocurrencia (...)")
(println "Escriba la funcion (halla A P i n)")
(println "Escriba entre comillas  ")

;; Ingresando los parámetros: valor presente(P), tasa de interés(i) y número de meses (n), se obtiene A (fórmula de recuperación del capital)

(define (hallarA P i n)
  (* 1.0 (* P (/ (* i (expt (+ 1 i) n)) (- (expt (+ 1 i) n) 1) )))
)


(define (hallarP A i n)
  (* A (/ 
   (- (expt (+ 1 (* i 0.01)) n) 1)
   (* (* i 0.01) (expt (+ 1 (* i 0.01)) n))
   ))
  )

(define (halla A P i n)
  (cond
    [(and
      (and (number? P) (number? i) (number? n) (string? A)) (>= P 0) (>= i 0) (>= n 0)) (hallarA P i n)]
    [(and
      (and (number? A) (number? i) (number? n) (string? P)) (>= A 0) (>= i 0) (>= n 0)) (hallarP A i n)]
    
    [else (print "Usted tiene un error")]
))

