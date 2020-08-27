;;;; letter_grades.clj is a driver for function yearCode.
;;;;
;;;; Input:  average value,  a integer, from 0 to 100
;;;; Output: the letter grade alphabet code corresponding to the integer.
;;;;         (assuming 90-100 is A, 80-90 is a B, etc).
;;;;
;;;; Usage: clojure -m letter_grades
;;;;
;;;; Created by: Sinai Park(sp46)
;;;; Date: Feb 25, 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns letter_grades)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; letterGrade() returns letter grade alphabet code corresponding to the integer.
;;; Receive: average value, an integer
;;; Precondition: integers from 0 to 100, (assuming 90-100 is A, 80-90 is a B, etc).
;;; Return: the letter grade corresponding to integer.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn letterGrade [average]
   (cond 
      (> average 89) "A"  ;;;;90-100 is an A
      (> average 79) "B"  ;;;;80-89 is B 
      (> average 69) "C"  ;;;;70-79 is C
      (> average 59) "D"  ;;;;60-69 is D
   :else "F"              ;;;;0-59 is F
   )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our letterGrade() function.
;;; Input: year: average value, an integer
;;; Output: the letter grade corresponding to integer.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
 (print "\nEnter your average score: ") (flush)
 (let
    [ average (Integer/parseInt(read-line)) ] ; read average (an integer)
    (println (letterGrade average) "\n")      ; display its code
 )
)