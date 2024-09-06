;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "beginner-reader.rkt" "deinprogramm" "sdp")((modname BilligStrom) (read-case-sensitive #f) (teachpacks ((lib "image.rkt" "teachpack" "deinprogramm" "sdp"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image.rkt" "teachpack" "deinprogramm" "sdp")))))
; Stromtarife:
; Tarif          | Grundgebühr pro Monat | Verbrauchspreis pro kWh |
; ---------------|-----------------------|-------------------------|
; Billig-Strom   | 4,90€                 | 0,19€                   |
; Watt für wenig | 8,20€                 | 0,16€                   |
 
; Kurzbeschreib
; monatlichen Rechnungsbetrag bei Billig-Strom ausrechnen
 
; Signatur
(: billig-strom (number -> number))
 
; Testfälle
(check-expect (billig-strom 100) 23.90)
(check-expect (billig-strom 10) 6.8)
 
(define billig-strom
  (lambda (kWh)
    (stromtarif 4.90 0.19 kWh)))
 
 
; monatliche Rechnungsbetrag für Waat-für-Wnig
 
; Signatur
(: watt-für-wenig (number -> number))
 
; Testfälle
(check-expect (watt-für-wenig 100) 24.20)
(check-expect (watt-für-wenig 10) 9.80)
 
(define watt-für-wenig
  (lambda (kWh)
    (stromtarif 8.20 0.16 kWh)))
 
 
; monatlichen Rechnungsbetrag ausrechnen
 
; Signatur
(: stromtarif (number number number -> number))
 
(define stromtarif
  (lambda (grundgebühr pro-kWh kWh)
    (+ grundgebühr
       (* kWh pro-kWh))))