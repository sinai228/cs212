;; array.clj "test-drives" function readArray() and printArray().
;;
;; Output: the values inside the array, which the user defines.
;;
;; Usage: clojure -m array
;;
;; Begun by: Dr. Adams, CS 214 at Calvin College.
;; Completed by: Sinai Park(sp46)
;; Date: March 20 2020 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns array)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; readArray() asks the user for input size of arrays to fill in.       
;; Receive: anArray, an empty Vector array type; size, Integer size of  array  
;; Output: anArray is filled with the values from the user 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Replace this line with the definition of sum(); harder (recursive solution)
(defn readArray [anArray count size]
  (println "Value of array: ")
      (if (< count size)  ; check to make sure count is less than size of the array

        (let 
          [element (int (read))  ; read in the input from the user
          theArray (conj anArray element) ]  ; append element to anArray

          (readArray theArray (+ count 1) size) ; recursively call readArray
        ) anArray
    
    )
    
)
  


;;;;;;;;;;;;;;;;;;;;;;;;;;;s;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; printArray() prints out each element in the array to the user   
;; Receive: anArray, a Vector array type with Floats in it already      
;; Output: each element in anArray is printed for the user to see 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   
(defn printArray [anArray count_num]
  (if (vector? anArray)   ; check to make sure anArray is a vector
    (if (< count_num (count anArray))    ; if count is less than the length of the array
      (let []
        (print (anArray count_num))     ; output the element in the array to the user
        (println)
        (printArray anArray (+ count_num 1)) ; call printArray recursively
      )
   ) 
   (println "is not a vector")  
  ) 
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; main function to test functions readArray() and printArray()
;; Output: the sum and average of some test vectors.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (print "Enter the size of the array: ") (flush); prompt the user for the size of the array
  (let 
    [ new_array []
      size (int (read))
      result (readArray new_array 0 size)     ; call functions readArray() and printArray()
    ]
  (do                
    (printArray result 0))))
