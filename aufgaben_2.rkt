;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "beginner-reader.rkt" "deinprogramm" "sdp")((modname aufgaben_2) (read-case-sensitive #f) (teachpacks ((lib "image.rkt" "teachpack" "deinprogramm" "sdp"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image.rkt" "teachpack" "deinprogramm" "sdp")))))
; Standart Aufgabe
(: add (number number -> number))

(check-expect (add 1 1) 2)

(define add
  (lambda (nr1 nr2)
    (+ nr1 nr2)))

; Aufgabe 2.11 Flensburger punkte und was passiert wie viel man hat

(define bestrafung
  (signature(one-of "Keine Sanktionen" "Vormerkung" "Ermahnung" "Verwarnung" "Entzug")))

(: flensburger_punkte_berechnen (natural -> bestrafung))

(check-expect (flensburger_punkte_berechnen 0) "Keine Sanktionen")
(check-expect (flensburger_punkte_berechnen 1) "Vormerkung")
(check-expect (flensburger_punkte_berechnen 2) "Vormerkung")
(check-expect (flensburger_punkte_berechnen 3) "Vormerkung")
(check-expect (flensburger_punkte_berechnen 4) "Ermahnung")
(check-expect (flensburger_punkte_berechnen 5) "Ermahnung")
(check-expect (flensburger_punkte_berechnen 6) "Verwarnung")
(check-expect (flensburger_punkte_berechnen 7) "Verwarnung")
(check-expect (flensburger_punkte_berechnen 8) "Entzug")
(check-expect (flensburger_punkte_berechnen 100) "Entzug")


(define flensburger_punkte_berechnen
  (lambda (punkte)
    (cond
      ((>= punkte 8)"Entzug")
      ((>= punkte 6)"Verwarnung")
      ((>= punkte 4)"Ermahnung")
      ((>= punkte 1)"Vormerkung")
      (else  "Keine Sanktionen")
     )
    )
  )

; Aufgabe 2.15 1 Buß- und Verwarnungsgelder automatisch bestimmt

(: hour-min (number -> number))

(check-expect (hour-min 1) 60)
(check-expect (hour-min 0.5) 30)
(check-expect (hour-min 2) 120)
(check-expect (hour-min 24) 1440)


(define hour-min
  (lambda (hour)
    (* hour 60)))


(: get-min (number number -> number))

(check-expect (get-min 1 15) 75)
(check-expect (get-min 0.5 20) 50)
(check-expect (get-min 2 30) 150)
(check-expect (get-min 24 35) 1475)


(define get-min
  (lambda (hour min)
    (+ (hour-min hour) min)))




(: zu-langes-parken (number number -> number))

(check-expect (zu-langes-parken 0 0) 0)
(check-expect (zu-langes-parken 0 20) 5)
(check-expect (zu-langes-parken 0 45) 10)
(check-expect (zu-langes-parken 1 5) 15)
(check-expect (zu-langes-parken 2 15) 20)
(check-expect (zu-langes-parken 3 15) 25)


(define zu-langes-parken
  (lambda (hour min)
    (cond
      ((>= (get-min hour min) 180) 25)
      ((>= (get-min hour min) 120)20)
      ((>= (get-min hour min) 60)15)
      ((>= (get-min hour min) 30) 10)
      ((> (get-min hour min) 0) 5)
      (else  0)
      )))

     

