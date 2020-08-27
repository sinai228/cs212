;; average.clj "test-drives" function average().
;;
;; Output: the average of a sequence of numbers.
;;
;; Usage: clojure -m average
;;
;; Begun by: Dr. Adams, CS 214 at Calvin College.
;; Completed by: Sinai Park(sp46)
;; Date: March 16 2020 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns average)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; sum() sums the values in a vector.       
;; Receive: aVec, a vector of numbers.
;; Return: the sum of the values in aVec.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Replace this line with the definition of sum(); harder (recursive solution)
(defn sum [aVec]
  (if (vector? aVec)          ;if aVec is a vector
    (if (empty? aVec)         ; if aVec is empty;
      0.0                     ; return 0
      (+ (peek aVec)          ;else peek the last value
      (sum (pop aVec))        ;sum all the digits except the last value
      ) 
    )
  )
)


;; Replace this line with the definition of sum2(); easier way of summing up values
(defn sum2 [aVec]
  (if (vector? aVec)
    (if (empty? aVec)
      0.0
        (reduce + aVec)         ;reduce returns the result of the combined value using operator 
    )
  )
) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; average() computes the average of a vector of numbers.
;; Receive: aVec, a vector of numbers. 
;; Return: the average of the numbers in aVec.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
;; Replace this line with the definition of average()
(defn average [aVec]
  (if (empty? aVec)
     0.0
  (/ (sum aVec) (count aVec))     ;divide the sum of the values in the array by the count of the vector 
  )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; main function to test functions sum() and average()
;; Output: the sum and average of some test vectors.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [ emptyVec []
      testVec  [9.0 8.0 7.0 6.0]
    ]

    (print "\nThe empty vec: " emptyVec) 
    (print "\nThe test  vec: " testVec) 
    (println "\n")

    ;; Test sum()...
    (printf "\nThe first sum is %.3f\n" (sum emptyVec))
    (printf "The second sum is %.3f\n" (sum testVec))

    ;; Test average()...
    (printf "\nThe first average is %.3f\n" (average emptyVec))
    (printf "The second average is %.3f\n" (average testVec))
    (println "\n")

    ;; Test sum2()...
    (printf "\nThe first sum2 is %.3f\n" (sum2 emptyVec))
    (printf "The second sum2 is %.3f\n" (sum2 testVec))
    (println "\n")
  )
)

