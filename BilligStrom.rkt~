;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "beginner-reader.rkt" "deinprogramm" "sdp")((modname Untitled) (read-case-sensitive #f) (teachpacks ((lib "image.rkt" "teachpack" "deinprogramm" "sdp"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image.rkt" "teachpack" "deinprogramm" "sdp")))))
; Signatur
(: billig-strom (number -> number))
; Testfälle
(check-expect (billig-strom 100) 23.9)
(check-expect (billig-strom 10) 6.8)

(define billig-strom
  (lambda (kwh)
    (+ 4.90
       (* kwh 0.19))))
    
    