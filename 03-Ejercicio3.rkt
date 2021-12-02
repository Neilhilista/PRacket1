#lang racket

;;Grupo : 9
;;Integrantes; Neil Balcero- Camila PLazas- Julián Álvarez
;;Ejercicio 3
;;A: R1 -> Image
;; Ingresando el parámetro n, tamaño del núcleo, me genera una representación del modelo atómico de rutherford

(require 2htdp/image)
(require lang/posn)

(println "Bienvenido al programa")
(println "Normas:")
(println "Escriba (PASAS) Para ver el modelo atomico de JJ Thomson de 1904")
(println "Escriba (RUTHERFORD) Para ver el modelo atomico de Rutherford de 1911")
(println "Escriba (BORH) Para ver el modelo atomico de Rutherford de 1913")


(define borde (center-pinhole (circle 12 "solid" "black")))
(define protonBack (center-pinhole (circle 10 "solid" "red")))
(define plus1 (center-pinhole (rectangle 5 13 "solid" "white")))
(define plus2 (center-pinhole (rotate 90 (rectangle 5 13 "solid" "white"))))

(define electronBack (center-pinhole (circle 10 "solid" "blue")))

;;Codigo que genera el proton, electron y el neutron
(define proton (clear-pinhole (overlay/pinhole plus1 plus2 protonBack borde)))
(define electron (clear-pinhole (overlay/pinhole plus2 electronBack borde)))
(define neutron (clear-pinhole (overlay/pinhole (circle 10 "solid" "grey") borde)))


;Codigo que genera un nucleo

(define nucleo1 (overlay/pinhole proton (put-pinhole 20 20 neutron)))
(define nucleo2 (overlay/pinhole neutron (put-pinhole 7 20 nucleo1)))
(define nucleo (clear-pinhole (overlay/pinhole (put-pinhole 7 10 nucleo2) proton)))

;Codigo que genera orbitas

(define orbita (overlay/pinhole (ellipse 200 40 "solid" "white") (ellipse 210 50 "solid" "black")))
(define orbita1 (clear-pinhole (overlay/pinhole electron (put-pinhole 40 10 orbita))))
(define orbita2 (clear-pinhole (overlay/pinhole electron (put-pinhole 100 47 orbita))))
(define orbita3 (clear-pinhole (overlay/pinhole electron (put-pinhole 150 45 orbita))))

;;Codigo que genera el atomo modelo de Rutherford

(define (RUTHERFORD) (clear-pinhole (overlay/pinhole (center-pinhole nucleo) (rotate 135 orbita1) (rotate 45 orbita1))))

;;Codigo que genera el modelo atomico de pudin de pasas

(define fondo (overlay/pinhole (circle 100 "solid" "red") (circle 103 "solid" "black")))

(define atomoTT1 (overlay/pinhole (put-pinhole 45 15 fondo) electron))
(define atomoTT2 (overlay/pinhole (put-pinhole 155 15 atomoTT1) electron))
(define atomoTT3 (overlay/pinhole (put-pinhole 205 100 atomoTT2) electron))
(define atomoTT4 (overlay/pinhole (put-pinhole 155 190 atomoTT3) electron))
(define atomoTT5 (overlay/pinhole (put-pinhole 45 190 atomoTT4) electron))
(define atomoTT6 (overlay/pinhole (put-pinhole 1 100 atomoTT5) electron))
(define atomoTT7 (overlay/pinhole proton (put-pinhole 50 100 atomoTT6)))
(define atomoTT8 (overlay/pinhole proton (put-pinhole 150 85 atomoTT7)))
(define atomoTT9 (overlay/pinhole electron (put-pinhole 100 120 atomoTT8)))
(define atomoTT10 (overlay/pinhole proton (put-pinhole 100 30 atomoTT9)))
(define atomoTT11 (overlay/pinhole electron (put-pinhole 180 150 atomoTT10)))
(define (PASAS) (clear-pinhole (overlay/pinhole electron (put-pinhole 100 180 atomoTT11))))


;;Codigo que genera el modelo atomico de Bohr

(define primerOrbita (overlay/pinhole nucleo (circle 50 "solid" "white") (circle 53 "solid" "black")))
(define segundaOrbita (overlay/pinhole nucleo (circle 80 "solid" "white") (circle 83 "solid" "black")))
(define primerElectron (overlay/pinhole electron (put-pinhole 1 50 primerOrbita)))
(define segundoElectron (clear-pinhole (overlay/pinhole electron (put-pinhole 115 50 primerElectron))))
(define atomoDosOrbitas (overlay/pinhole segundoElectron segundaOrbita))
(define (BOHR) (clear-pinhole (overlay/pinhole electron (put-pinhole 80 1 atomoDosOrbitas))))


