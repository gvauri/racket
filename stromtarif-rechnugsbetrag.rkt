;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "beginner-reader.rkt" "deinprogramm" "sdp")((modname stromtarif-rechnugsbetrag) (read-case-sensitive #f) (teachpacks ((lib "image.rkt" "teachpack" "deinprogramm" "sdp"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image.rkt" "teachpack" "deinprogramm" "sdp")))))
; monatlichen Rechnungsbetrag für Tarif Billig-Strom berechnen
(: billig-strom (natural -> rational))

(check-expect (billig-strom 0) 4.9)
(check-expect (billig-strom 10) 6.8)
(check-expect (billig-strom 20) 8.7)
(check-expect (billig-strom 30) 10.6)

(define billig-strom
  (lambda (kWh)
    (stromtarif-rechnungsbetrag 4.90 0.19 kWh)))



; monatlichen Rechnungsbetrag für Tarif Watt für wenig berechnen

(: watt-für-wenig (natural -> rational))

(check-expect (watt-für-wenig 10) 9.8)
(check-expect (watt-für-wenig 20) 11.4)
(check-expect (watt-für-wenig 30) 13.0)

(define watt-für-wenig
  (lambda (kWh)
    (stromtarif-rechnungsbetrag 8.20 0.16 kWh)))


; monatlichen Rechnungsbetrag für Stromtarif berechnen

(: stromtarif-rechnungsbetrag (rational rational natural -> rational))

; Billig-Strom
(check-expect (stromtarif-rechnungsbetrag 4.90 0.19 0) 4.9)
; Billig-Strom
(check-expect (stromtarif-rechnungsbetrag 4.90 0.19 10) 6.8)
; Billig-Strom
(check-expect (stromtarif-rechnungsbetrag 4.90 0.19 20) 8.7)
; Billig-Strom
(check-expect (stromtarif-rechnungsbetrag 4.90 0.19 30) 10.6)
; Watt für wenig
(check-expect (stromtarif-rechnungsbetrag 8.20 0.16 0) 8.2)
; Watt für wenig
(check-expect (stromtarif-rechnungsbetrag 8.20 0.16 10) 9.8)
; Watt für wenig
(check-expect (stromtarif-rechnungsbetrag 8.20 0.16 20) 11.4)
; Watt für wenig
(check-expect (stromtarif-rechnungsbetrag 8.20 0.16 30) 13.0)

(define stromtarif-rechnungsbetrag
  (lambda (grundgebühr pro-kWh kWh)
    (+ grundgebühr (* pro-kWh kWh))))