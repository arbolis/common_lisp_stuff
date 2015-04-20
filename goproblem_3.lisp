;; Outline for game
(defclass game ()
  ((width :reader width
          :initform 19)
   (height :reader height
           :initform 19)
   (board :accessor board
          :initform nil)))
;; 
(defvar *game* (make-instance 'game))

;; Create a new function called make-board
(defun make-board ()
  (setf (board *game*) (make-array (list (+ (width *game*) 2)
					  (+ (height *game*) 2))
	:initial-element 0)))

;;
(defun pick-random-cell ())
