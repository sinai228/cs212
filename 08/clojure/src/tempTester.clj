;;;; tempTester.clj tests a clojure Temp type.
;;;;
;;;; Output: results of testing Temp functions.
;;;;
;;;; Usage: clojure -m nameTester
;;;;
;;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;;; Completed by: Sinai Park (sp46)
;;;; Date: April 1 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns tempTester)   ; program name

(load "Temp")


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver to test our Temp functions. 
;;; Output: the result of testing our Temp functions.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [                                          ; 3 ways to construct an object:
       start_temp (make-Temp 30.0 "F")  ; -using our "make-" constructor
       limit_temp (->Temp 30.0 "F" ) ; -invoking constructor directly                                                   
       name3 (map->Temp {:degrees 30.0 :scale "Jinx"}) ; -mapping field-names to values; 
    ]
    (printTemp start_temp) (println)
    (println "Starting Temperature ")
    (let 
      [start_temp (readTemp start_temp)]
    (println "Limiting Temperature ") 
    (let 
      [limit_temp (readTemp limit_temp)]
    (println "Enter the increment number: ") 
    (let 
      [increment (read)]

   
      ;First print out the Fahrenheit degrees
      (toFahrenheit start_temp)
      (printTemp start_temp)
      (print "\t")
      (raise start_temp increment)
  
      ;Second print out the Celsius degrees
      (toCelsius start_temp)
      (printTemp start_temp)
      (print "\t")
  
      ;Third print out the Kelvin degrees
      (toKelvin start_temp)
      (printTemp start_temp)
      (println "")

    ))) ;three let definitions
    (println "\nAll tests passed!")

  )
)

