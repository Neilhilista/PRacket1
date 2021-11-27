#lang racket

;Ejercicio 2
;Nombre: Julian Alvarez
;Genera un sistema solar
;Fecha : 22/11/2021

(require 2htdp/image)

;Generando un sol de radio 190
(define tamaño 100)
(define centro (circle tamaño "solid" (color 255 224 98)))
(define centro2 (circle (+ tamaño 30) "solid" (color 254 211 41)))
(define centro3 (circle (+ tamaño 60) "solid" (color 226 180 1)))
(define centro4 (circle (+ tamaño 90) "solid" (color 69 57 13)))
(define sol (crop 190 0 380 380 (overlay centro centro2 centro3 centro4)))
;lineas del sol
(define lineasSol (put-pinhole 1 0 sol) )


;Espacio 
(define espacio (rectangle (* 380 3) 380 "solid" (color 2 7 18)))
(define lineasEspacio (put-pinhole 1 0 espacio))

(define espacioSol (overlay/pinhole lineasSol lineasEspacio))

;Estructura de planeta

;barra
(define (tamañoBarra x) x)
(define (colorBarra x y z) (color x y z))
(define (cuerpoBarra tamañoBarra colorBarra) (rectangle (* tamañoBarra 2) tamañoBarra "solid" colorBarra))
(define (circuloBarra tamañoBarra colorBarra) (circle (/ tamañoBarra 2) "solid" colorBarra))
(define (barraIzquierda tamañoBarra colorBarra) (crop/align "left" "top" (/ tamañoBarra 2) tamañoBarra (circuloBarra tamañoBarra colorBarra)))
(define (barraDerecha tamañoBarra circuloBarra) (crop/align "right" "top" (/ tamañoBarra 2) tamañoBarra circuloBarra))

;Barra para planetas: num X (color) -> img x (color)
;le ingreso un numero y 3 numeros de rgb y se devuelve una imagen de barra con un color especifico para los planetas
(define (barraModificable x r g b)
  ( beside
    (barraIzquierda (tamañoBarra x) (colorBarra r g b))
    (cuerpoBarra (tamañoBarra x) (colorBarra r g b))
    (barraDerecha (tamañoBarra x) (circuloBarra (tamañoBarra x) (colorBarra r g b)))))

;mercurio

(define planetaM (put-pinhole 65 20 (circle 50 "solid" (color 150 133 79))))
(define (tierraM barraModificable) (center-pinhole barraModificable))
(define planetaM2 (clear-pinhole (overlay/pinhole (tierraM (barraModificable  15 255 166 126)) planetaM)))
(define planetaM3 (clear-pinhole (overlay/pinhole (tierraM (barraModificable  9 255 166 126)) (put-pinhole 48 30 planetaM2))))
(define planetaM4 (clear-pinhole (overlay/pinhole (tierraM (barraModificable  9 115 102 63)) (put-pinhole 20 50 planetaM3))))
(define planetaM5 (overlay/pinhole (tierraM (barraModificable  14 115 102 63)) (put-pinhole 40 58 planetaM4)))
(define planetaM6 (overlay/pinhole (tierraM (barraModificable  7 255 166 126)) (put-pinhole 47 58 planetaM5)))
(define planetaM7 (overlay/pinhole (tierraM (barraModificable  7 255 166 126)) (put-pinhole 78 70 planetaM6)))
(define planetaM8 (overlay/pinhole (tierraM (barraModificable  12 115 102 63)) (put-pinhole 78 50 planetaM7)))
(define planetaM9 (overlay/pinhole (tierraM (barraModificable  12 115 102 63)) (put-pinhole 50 80 planetaM8)))
(define planetaM10 (overlay/pinhole (tierraM (barraModificable  12 115 102 63)) (put-pinhole 30 20 planetaM9)))
(define planetaM11 (overlay/pinhole (tierraM (barraModificable  6 255 166 126)) (put-pinhole 50 85 planetaM10)))

;Planeta terminado de Mercurio
(define Mercurio (clear-pinhole (overlay/pinhole (tierraM (barraModificable  6 255 166 126)) (put-pinhole 85 45 planetaM11))))

;venus

(define planetaV (put-pinhole 65 20 (circle 50 "solid" (color 160 140 50))))
(define (tierraV barraModificable) (center-pinhole barraModificable))
(define planetaV2 (clear-pinhole (overlay/pinhole (tierraV (barraModificable  15 157 121 2)) planetaV)))
(define planetaV3 (clear-pinhole (overlay/pinhole (tierraV (barraModificable  9 157 121 2)) (put-pinhole 48 30 planetaV2))))
(define planetaV4 (clear-pinhole (overlay/pinhole (tierraV (barraModificable  9 165 151 2)) (put-pinhole 20 50 planetaV3))))
(define planetaV5 (overlay/pinhole (tierraV (barraModificable  14 165 151 2)) (put-pinhole 40 58 planetaV4)))
(define planetaV6 (overlay/pinhole (tierraV (barraModificable  7 157 121 2)) (put-pinhole 47 58 planetaV5)))
(define planetaV7 (overlay/pinhole (tierraV (barraModificable  7 157 121 2)) (put-pinhole 78 70 planetaV6)))
(define planetaV8 (overlay/pinhole (tierraV (barraModificable  12 165 151 2)) (put-pinhole 78 50 planetaV7)))
(define planetaV9 (overlay/pinhole (tierraV(barraModificable  12 165 151 2)) (put-pinhole 50 80 planetaV8)))
(define planetaV10 (overlay/pinhole (tierraV (barraModificable  12 165 151 2)) (put-pinhole 30 20 planetaV9)))
(define planetaV11 (overlay/pinhole (tierraV (barraModificable  6 157 121 2)) (put-pinhole 50 85 planetaV10)))

(define Venus (clear-pinhole (overlay/pinhole (tierraV (barraModificable  6 157 121 2)) (put-pinhole 85 45 planetaV11))))

;Tierra
(define planetaT (put-pinhole 65 20 (circle 50 "solid" (color 3 92 255))))
(define (tierraT barraModificable) (center-pinhole barraModificable))
(define planetaT2 (clear-pinhole (overlay/pinhole (tierraT (barraModificable  15 81 255 12)) planetaT)))
(define planetaT3 (clear-pinhole (overlay/pinhole (tierraT (barraModificable  9 81 255 12)) (put-pinhole 48 30 planetaT2))))
(define planetaT4 (clear-pinhole (overlay/pinhole (tierraT (barraModificable  9 255 255 255)) (put-pinhole 20 50 planetaT3))))
(define planetaT5 (overlay/pinhole (tierraT (barraModificable  14 255 255 255)) (put-pinhole 40 58 planetaT4)))
(define planetaT6 (overlay/pinhole (tierraT (barraModificable  7 81 255 12)) (put-pinhole 47 58 planetaT5)))
(define planetaT7 (overlay/pinhole (tierraT (barraModificable  7 81 255 12)) (put-pinhole 78 70 planetaT6)))
(define planetaT8 (overlay/pinhole (tierraT (barraModificable  12 255 255 255)) (put-pinhole 78 50 planetaT7)))
(define planetaT9 (overlay/pinhole (tierraT (barraModificable  12 255 255 255)) (put-pinhole 50 80 planetaT8)))
(define planetaT10 (overlay/pinhole (tierraT (barraModificable  12 255 255 255)) (put-pinhole 30 20 planetaT9)))
(define planetaT11 (overlay/pinhole (tierraT (barraModificable  6 81 255 12)) (put-pinhole 50 85 planetaT10)))

;Planeta Tierra terminado
(define Tierra (clear-pinhole (overlay/pinhole (tierraT (barraModificable  6 81 255 12)) (put-pinhole 50 85 planetaT11))))


(define lineasMercurio (center-pinhole Mercurio))
(define lineasVenus (center-pinhole Venus))
(define lineasTierra (center-pinhole Tierra))

(define (linea x y) (put-pinhole x y (line 1 380 (pen "white" 10 "short-dash" "butt" "bevel"))))

(define espacioMercurio (overlay/pinhole lineasMercurio (linea 0 100) (put-pinhole 500 100 espacioSol)))
(define espacioVenus (overlay/pinhole lineasVenus (linea 0 300) (put-pinhole 700 300 espacioMercurio)))

;Proyecta el espacio
(clear-pinhole (overlay/pinhole lineasTierra (linea 0 200) (put-pinhole 1000 200 espacioVenus)))




