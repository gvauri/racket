;; Die ersten drei Zeilen dieser Datei wurden von DrRacket eingefügt. Sie enthalten Metadaten
;; über die Sprachebene dieser Datei in einer Form, die DrRacket verarbeiten kann.
#reader(lib "beginner-reader.rkt" "deinprogramm" "sdp")((modname aufgaben) (read-case-sensitive #f) (teachpacks ((lib "image.rkt" "teachpack" "deinprogramm" "sdp"))) (deinprogramm-settings #(#f write repeating-decimal #f #t none explicit #f ((lib "image.rkt" "teachpack" "deinprogramm" "sdp")))))
; Aufgabe 1.12 double your String
(: double-string (string -> string))

(check-expect (double-string "Sperber") "SperberSperber")

(define double-string
  (lambda (string)
    (string-append string string)))


; Aufgabe 1.13 (Stunden, minuten, sekunden, Zentelsekunden)
(: time-beats (natural natural natural natural -> number))

(check-expect (time-beats 0 1 26 4) 1)

(define time-beats
  (lambda (hour min sec ds)
    ( / (+ (* (+ (* (+ (* hour 60) min) 60) sec) 10) ds) 864))) 

