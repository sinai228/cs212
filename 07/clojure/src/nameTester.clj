;;;; nameTester.clj creates and tests a clojure Name type.
;;;;
;;;; Output: results of testing Name functions.
;;;;
;;;; Usage: clojure -m nameTester
;;;;
;;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;;; Completed by: Sinai Park (sp46)
;;;; Date: April 1 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns nameTester)   ; program name

;;; define a Clojure record named Name 
;;; (which compiles to a Java class).

(defrecord Name [firstName, middleName, lastName])
  

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; make-Name constructs a Name from three strings. 
;;; Receive: firstN, middleN and lastN, three strings.
;;; Return: the Name (firstN middleN lastN). 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn make-Name [firstN, middleN, lastN]
  (->Name firstN, middleN, lastN)
)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFirst() extracts the first name of a Name object.
;;; Receive: aName, a Name.
;;; Return: the firstName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn getFirst[^Name aName]
  (:firstName aName) 
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle() extracts the middle name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the middleName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn getMiddle[^Name aName]
  (:middleName aName) 
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast() extracts the last name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the lastName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn getLast[^Name aName]
  (:lastName aName) 
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFullName() returns a full name in F-M-L order. 
;;; Receive: aName, a Name. 
;;; Return: firstName, middleName, lastName,
;;;           separated by spaces. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn getFullName[^Name aName]
  (str (getFirst aName) " " (getMiddle aName) " " (getLast aName)) 
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName() displays a name object.
;;; Receive: aName, a Name.
;;; Output: the strings in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn printName[^Name aName]
  (print (getFullName aName) )
)



; PROJECT 07 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setFirst() changes the first name of a Name object.
;;; Receive: aName, a Name.
;;; Return: the changed firstName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn setFirst[aName newFirst]
  (->Name newFirst (:middleName aName) (:lastName aName))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setMiddle() changes the middle name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the middleName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn setMiddle[aName newMiddle]
  (->Name (:firstName aName) newMiddle (:lastName aName))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; setLast() changes the last name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the lastName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn setLast[aName newLast]
  (->Name (:firstName aName) (:middleName aName) newLast)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lfmi() returns a full name in L-F-M order. 
;;; Receive: aName, a Name. 
;;; Return: lastName, firstName, middleName,
;;;           separated by spaces. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn lfmi[^Name aName]
  (str (getLast aName) " " (getFirst aName) " " (subs (getMiddle aName) 0 1) )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readName() creates a name from user input. 
;;; Receive: aName, a Name. 
;;; Return: none 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn readName[^Name aName]
  (print "Please enter the first name: ") (flush)
  (let
    [firstName (read-line)]
      (print "Please enter the middle name: ") (flush)
      (let
        [ middleName (read-line)]
          (print "Please enter the last name: ") (flush)
          (let
            [lastName (read-line)]
             (->Name firstName middleName lastName)
          )
      )
  )

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver to test our Name functions. 
;;; Output: the result of testing our Name functions.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [                                          ; 3 ways to construct an object:
       name1 (make-Name "John" "Paul" "Jones")  ; -using our "make-" constructor
       name2 (->Name "Jane" "Penelope" "Jones") ; -invoking constructor directly                                                   
       name3 (map->Name {:lastName "Jones" :firstName "Jinx" :middleName "Joy"}) ; -mapping field-names to values; 
    ]
    ;; ----- SECTION 1 -----
    (println)
    (print name1) (println)
    (assert (= (getFirst name1) "John") "getFirst(1) failed")
    (assert (= (getMiddle name1) "Paul") "getMiddle(1) failed")
    (assert (= (getLast name1) "Jones") "getLast(1) failed")
    (assert (= (getFullName name1) "John Paul Jones") "toStgetFullNamering(1) failed")
    (assert (= (lfmi name1) "Jones John P") "lfmi(1) failed")
    (printName name1) (println)

    (let 
      [name1 (setFirst name1 "Gray")
       name1 (setMiddle name1 "Brown") 
       name1 (setLast name1 "Smith")
      ]

    (assert (= (getFirst name1) "Gray") "getFirst(1) failed")
    (assert (= (getMiddle name1) "Brown") "getMiddle(1) failed")
    (assert (= (getLast name1) "Smith") "getLast(1) failed")
    (assert (= (getFullName name1) "Gray Brown Smith") "toStgetFullNamering(1) failed")
    (printName name1) (println)
    (assert (= (lfmi name1) "Smith Gray B") "lfmi(1) failed")

    (let [name1 (readName name1)]
    (printName name1) (println)
    ;; ----- SECTION 2 -----
    (println)
    (print name2) (println)
    (assert (= (getFirst name2) "Jane") "getFirst(2) failed")
    (assert (= (getMiddle name2) "Penelope") "getMiddle(2) failed")
    (assert (= (getLast name2) "Jones") "getLast(2) failed")
    (assert (= (getFullName name2) "Jane Penelope Jones") "getFullName(2) failed")
    (printName name2) (println)
    ;; ----- SECTION 3 -----
    (println)
    (print name3) (println)
    (assert (= (getFirst name3) "Jinx") "getFirst(3) failed")
    (assert (= (getMiddle name3) "Joy") "getMiddle(3) failed")
    (assert (= (getLast name3) "Jones") "getLast(3) failed")
    (assert (= (getFullName name3) "Jinx Joy Jones") "getFullName(3) failed")
    (printName name3) (println)


    (println "\nAll tests passed!\n")
  ))
))