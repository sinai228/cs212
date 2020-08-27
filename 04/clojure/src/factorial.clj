;;;; logTable.clj displays a table of logarithms.
;;;;
;;;; Input: a number, float.
;;;; Precondition: the number must be a positive integer.
;;;; Output: The nth factorial of the integer value n
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Sinai Park(sp46)
;;;; Date: March 4 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns factorial)                                 ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Factorial() recursively generates the nth factorial of a number.
;;;; Receive: the nth count as it decrements by one each loop
;;;;
;;;; Precondition: count value must be greater than zero.
;;;;                factorial number must start at one
;;;; Output: The factorial of given number.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; direct-recursive version

; replace this line with the definition of Factorial().

(defn factorialCalc [number result count] 
  (if (<= count number)      
    (do 
      (factorialCalc number (* result count) (+ count 1)) ;recursion
     
  )
  result ;show factorial stores in result variable
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; -main is a 'driver' for the displayLogTable() functions.
;;; Input: n, integer value.
;;; Output: The factorial of the integer value n, as user input
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn -main []
 (print "To compute the factorial of given n,enter the value: ") (flush)
  (let  
    [number (read)]
    (print(factorialCalc number 1.0 2.0))
    (println)
  )
 )
