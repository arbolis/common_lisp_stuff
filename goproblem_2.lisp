;; Define board size
(defparameter *n* 19)

;; Initialize the board as an array whose elements are all 0, the size
;; is given by a list. 0 means no stone while 1 means 1 stone
;; As first the board is empty
;; I use defparameter instead of defvar so that I can reset the matrix by using this same line
(defparameter *board* (make-array (list (+ *n* 2) (+ *n* 2)) :initial-element 0))

;; Generate random coordinates
(defun random-coordinate ()
  (+ 1 (random *n*)))   

;; Define x-coordinate and y-coordinate using (random-coordinate)
(defparameter *x-coordinate* (random-coordinate))
(defparameter *y-coordinate* (random-coordinate))

;; Define a boolean function that checks whether there are adjascent stones
(defun mth (b i j)
  (nth (nth b i) j))

(defun check-if-adjascent ()
       (not (or
	    (= 1 (mth *board* (decf *x-coordinate*) *y-coordinate*))
	    (= 1 (mth *board* *x-coordinate* (decf *y-coordinate*)))
	    (= 1 (mth *board* (incf *x-coordinate*) *y-coordinate*))
	    (= 1 (mth *board* *x-coordinate* (incf *y-coordinate*))))))
;; Define a boolean function that checks whether there's already a stone placed there
(defun already-a-stone ()
  (not (= 1 (mth *board* *x-coordinate* *y-coordinate*))))

;; Now the serious and hardest part
;;if check-if-adjascent returns false and there is no stone at x_coordinate y_coordinate, then
;;add a new stone (see below) and increase the counter by 1.
;;else if there is a stone at x_coordinate y_coordinate, pick a new x_coordinate y_coordinate
;;else increase the counter and return "'(It took) counter '(stones)".

(if already-a-stone )



;; Now replace a random element 0 by 1, in the matrix:
(setf (aref *board* *x_coordinate* *y_coordinate*) 1)



;; Reset the board
;;(defparameter *board* (make-array (list (+ n 2) (+ n 2)) :initial-element 0))
