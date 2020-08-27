;; Temp.clj is a module for our 'Temp' type-abstraction.
;;
;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;; Completed by: Sinai Park (sp46)
;; Date: April 15 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Create a record/struct type named Temp
(defrecord Temp [degree, scale])


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; make-Temp constructs a Temp object from 
;; degree, a string and scale, a char 
;; Receive: degree and scale
;; Return: the Temp (degree and scale). 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Temp [degree scale]
  (->Temp degree scale)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; getDegrees extracts the degrees of a temp object.
;; Receive: aTemp, a Temp
;; Return: the degrees double in aTemp.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getDegree [aTemp]
  (:degree aTemp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; getScale extracts the scale of a temp object.
;; Receive: aTemp, a Temp
;; Return: the scale char in aTemp.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn getScale [aTemp]
  (:scale aTemp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; toFarenheit extracts the degrees of a temp object.
;; Receive: aTemp, a Temp
;; Return: the degrees in Fahrenheit
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toFahrenheit [aTemp]
  (if (or (=(:scale aTemp) "C") (=(:scale aTemp) "c"))
    (do
      (let [(:degree aTemp) (+ ( * (:degree aTemp) (/ 9.0 5.0)) 32.0) ]
      (let [scale_char ("F")]
      (->Temp degree_val scale_char)))))
  (if (or (=(:scale aTemp) "K") (=(:scale aTemp) "k"))
    (do
      (let [degree_val (- ( * (:degree aTemp) (/ 9.0 5.0)) 459.67) ]
      (let [scale_char ("F")]
      (->Temp degree_val scale_char)))))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; toCelcius extracts the scale of a temp object.
;; Receive: aTemp, a Temp. 
;; Return: the degrees in Celsius
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toCelsius [aTemp]
  (:scales aTemp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; toKelvin extracts the scale of a temp object.
;; Receive: aTemp, a Temp
;; Return: the degrees in Kelvin
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn toKelvin [aTemp]
  (:scales aTemp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readTemp() creates a temp from user input. 
;;; Receive: aTemp, a Temp 
;;; Return: none 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn readTemp[^Temp aTemp]
  (print "Please enter the degree name: ") (flush)
  (let
    [degree (read-line)]
      (print "Please enter the scale: ") (flush)
      (let
        [ scale (read-line)]
          (->Temp degree scale)
          
      )
  )
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; printTemp displays a temp object. 
;; Receive: aTemp, a Temp, 
;; Output: the string representation of aTemp. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn printTemp[aTemp]
  (print (getDegree aTemp) (getScale aTemp))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setFirst() changes the first name of a Name object.
;;; Receive: aName, a Name.
;;; Return: the changed firstName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn raise[aTemp degreeval]
    (->Temp (+ (getDegree aTemp) degreeval) (:scale aTemp) )
  
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setMiddle() changes the middle name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the middleName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn lower[aTemp sub_degree]
  (->Temp (- (:degree aTemp) sub_degree) (:scale aTemp) )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setLast() changes the last name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the lastName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn equals[aTemp comp_temp]
  (:degree aTemp)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; less_than() returns a full name in L-F-M order. 
;;; Receive: aName, a Name. 
;;; Return: lastName, firstName, middleName,
;;;           separated by spaces. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn less_than[aTemp comp_temp]
  (:degree aTemp)
)