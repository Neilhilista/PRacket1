#lang racket

;;Grupo : 9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 3
;;A: R1 -> Image
;; Ingresando el parámetro n, tamaño del núcleo, me genera una representación del modelo atómico de rutherford

(require 2htdp/image)
(require lang/posn)

(define n 10)
(define (núcleo)               
                 
  (circle n "solid" "red")
 
               
 )
(define (orbita1)(overlay/xy
              
  (circle n "solid" "yellow")
  0 -25
  (ellipse (* n 27) (* n 10) "outline" "black")
                 )
)
(define (orbita2)(overlay/xy
               
  (circle  n "solid" "yellow")
  -20 -12
  (ellipse (* n 27) (* n 10) "outline" "black")
                 )
)

(define (a n)
  
  (overlay (núcleo)
          (rotate 45 (orbita2)
  )
           (orbita1)
         
  )

)