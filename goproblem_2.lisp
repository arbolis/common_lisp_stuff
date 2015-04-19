;; Define board size
(defparameter n 19)

;; Initialize the board as an array whose elements are all 0, the size
;; is given by a list. 0 means no stone while 1 means 1 stone
;; As first the board is empty
(defvar *board* (make-array (list (+ n 2) (+ n 2)) :initial-element 0))

;; Generate random coordinates
;;(let (x (+ 1 (random (- n 1)))) (do stuff with x)) ; I'm better off using a function instead
(defun random_coordinate (n)
  (+ 1 (random n)))   ; Remember to call the function like so: (random_coordinate n)

;; Define x_coordinate and y_coordinate in terms of (random n)
write some code here

;; Define a function that checks whether there are adjascent stones

(defun mth (b i j)
  (nth (nth b i) j))

(defun dec (n)
  (- n 1))

(defun inc (n)
  (+ n 1))

(defun check_if_adjascent (x_coordinate y_coordinate)
       (if (or
	    (= 1 (mth board (dec x_coordinate) y_coordinate))
	    (= 1 (mth board x_coordinate (dec y_coordinate)))
	    (= 1 (mth board (inc x_coordinate) y_coordinate))
	    (= 1 (mth board x_coordinate (inc y_coordinate))))
	    nil
	    t))



;; Now replace a random element 0 by 1, in the matrix:
(setf (aref *board* x_coordinate y_coordinate) 1)

