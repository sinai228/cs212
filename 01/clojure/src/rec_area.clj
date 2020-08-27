;;;; rec_area.clj calculates the area of a rectangle.
;;;;
;;;; Input: The width and height of a rectangle.
;;;; Output: The area of that rectangle.
;;;;
;;;; Usage: clojure -m rec_area
;;;;
;;;; Created by: Sinai Park(sp46)
;;;; Date:Feb 6 2020
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns rec_area) ; namespace function names the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function recArea() computes the area of a rectangle.
;;; Receive: itsWidth, a number, itsHeight, a number
;;; Precondition: itsWidth >= 0.0. itsHeight >= 0.0.
;;; Return: the area of the corresponding rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn recArea [itsWidth itsHeight]
  (* itsWidth itsHeight)   ; return the area w*h
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main is where execution begins
;;; Input: the width and height of a rectangle.
;;; Output: the area of that rectangle.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (println "\nTo compute the area of a rectangle,")
  (print   " enter its width and its height: (in decimal form) ") (flush)

  (let
    [ width (read) height (read) ]
    (assert (>= width 0) "-main: width must be positive")
    (assert (>= height 0) "-main: height must be positive")

    (printf "\nThe area is %f\n\n" (recArea width height))

    (print "\nThe area is ")
    (print (recArea width height))
    (print "\n\n")

    (printf "\nThe area is %.15f\n\n" (recArea width height))
  )
)  