#lang racket
;;Grupo : 9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 2
;;A: R1 -> Image
;; Ingresando el parámetro s, tamaño del sol, me genera una representación del sistema solar

(require 2htdp/image)
(require lang/posn)

(define (t sol) sol)

(define (orbita1)(overlay/xy               
  "left" "middle"                
  (circle (* 0.1 t) "solid" "red")
  (ellipse (* t 14) (* t 6) "outline" "white")
                 )
 )
(define (orbita2)(overlay/xy
  "right" "middle"                
  (circle (* 0.15 t) "solid" "pink")
  (ellipse (* t 23) (* t 10) "outline" "white")
                 )
)
(define (orbita3)(overlay/xy
  "left" "middle"                
  (circle (* 0.2 t) "solid" "blue")
  (ellipse (* t 27) (* t 12) "outline" "white")
                 )
)
  (overlay (orbita1)
           (orbita2)
           (orbita3)
           (ellipse t t "solid" "Light orange")
           (rectangle(* 50 t) (* 30 t) "solid" "black")
  )
 



    
          
  
                