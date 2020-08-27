;;;; roots.clj splits a string into two substrings.
;;;;
;;;; Input: equation(a, b, c) - the quadratic function coefficients to be evaluated
;;;; 		        
;;;; Output:   true ---- roots, calculated by the quadratic formula
;;;;           false --- if b^2 - 4ac is (-) or if a is 0
;;;;
;;;; Usage: clojure -m root
;;;;
;;;; Begun by: Dr. Adams, for CS 214 at Calvin College.
;;;; Completed by: Sinai Park(sp46)
;;;; Date: March 12 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns roots)      ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; rootcalc()   /* rootcalc() finds the roots of a quadratic equation
;;; Receive: 	equation - the quadratic function values a, b, c to be evaluated
;;; 	
;;; PRE: a, b, c are integers
;;;      the discriminant is not less than zero
;;;
;;; Returns:   true ---- roots, calculated by the quadratic formula
;;;            false --- if b^2 - 4ac is (-) or if a is 0
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Replace this line with the definition of rootcalc()
(defn rootcalc [a, b, c,]
    (if (= a 0)
    ;;start if a is equal to zero: invalid rooots
    (do
      (print "The coefficent of x^2 is a zero\n")
      (let [root1 0.0 
            root2 0.0 
            isTrue false]   ;;default values
      (vector root1 root2 isTrue))
    )
    ;;else if a is not equal to 0, compute the roots
    (do (let [arg (- (* b b) (* 4 (* a c)))]
      (if (>= arg 0)
        (do
          (let [root1 (/ (+ (- 0 b) (Math/sqrt arg)) (* 2 a ))] 
          (let [root2 (/ (- (- 0 b) (Math/sqrt arg)) (* 2 a ))]
          (let [isTrue true]
          (vector root1 root2 isTrue))))
        )
        ;;;else if discriminant is less than 0; roots are unreal numbers
        (do 
          (print "The discriminatnt (b^2 - 4ac) is negative\n")
          (let [root1 0.0 root2 0.0 isTrue false]
          (vector root1 root2 isTrue))
        ) 
      )
    ))
  )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; main function
;;; Input: a, b, c, values of quadratic function
;;; Output: the roots of the function, if real numbers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (print "To compute the roots of the quadratic formula \ny = ax^2 + bx + c, \nenter the a value:") (flush)
  (let
    [ a (read) ]                      ; read the string
    (print "Enter the b value: ") (flush)
    (let 
      [ b (read) ]                 ; read the split pos.
      (print "Enter the c value: ") (flush)
      (let 
        [ c (read)  
        result (rootcalc a b c)                  ; compute the roots of the function
        root1 (get result 0)                     ; retrieve the first root from first
        root2 (get result 1)                     ; retrieve the second root
        isTrue (get result 2)]
      (if (= isTrue true)                                         ; display the roots
      (do 
        (printf (str "\nThe first root is \"%s\" and" 
                    " the second root is \"%s\"\n\n")
                       root1 root2))
      (do (print "")))
     )
    )
  )
)
