;ZADANIE 4
(defclass Punkt()
  (
    (x :accessor x :initarg :x :initform 0)
    (y :accessor y :initarg :y :initform 0)
  )
)

(defclass Kolo (Punkt)
  (
    (r :accessor r :initarg :r :initform 1)
  )
)

(defclass Rectangle (Punkt) 
	(
		(a :initform 1 :initarg :a :accessor a)
		(b :initform 1 :initarg :b :accessor b)
		
	)
)
;;Distance=================================================================================

(defgeneric distance (figura1 figura2))
;;Punkt====================================================================================
;;PUNKT-PUNKKT
(defmethod distance (
		(figura1 Punkt) 
		(figura2 Punkt)
	) 
	
	(sqrt (+ (expt (- (x figura1) (x figura2)) 2) (expt (- (y figura1) (y figura2)) 2)))
)

;;PUNKT-Circle
(defmethod distance((figura1 Punkt) (figura2 Kolo)) 
	(sqrt (+ (expt (- (x figura1) (- (x figura2) (r figura2)) ) 2) (expt (- (y figura1) (- (y figura2) (r figura2)) ) 2)))
)

;;PUNKT-Rectangle
(defmethod distance((figura1 Punkt) (figura2 Rectangle)) 
	(distance figura2 figura1)
)

;;Kolo==========================================================================================
;;circle-punkt
(defmethod distance((figura1 Kolo)(figura2 Punkt))
	(sqrt (+ (expt (- (x figura1) (+ (x figura2) (r figura2)) ) 2) (expt (- (y figura1) (+ (y figura2) (r figura2)) ) 2)))
)
;;circle-circle

(defmethod distance((figura1 Kolo)(figura2 Kolo))
	(sqrt (+ (expt (- (- (x figura1) (r figura1)) (- (x figura2) (r figura2)) ) 2) (expt (- (- (y figura1) (r figura1)) (- (y figura2) (r figura2)) ) 2)))
)

;;circle-Rectangle

(defmethod distance((figura1 Kolo)(figura2 Rectangle))
	(distance figura2 figura1)
)
;;Rectangle====================================================================================
;;Rectangle- Rectangle

(defmethod distance ((figura1 Rectangle)(figura2 Punkt))
	(setq dx (max (-(abs (-(x figura1)(x figura2))) (/ (a figura1) 2)) 0))
    (setq dy (max (-(abs (-(y figura1)(y figura2))) (/ (b figura1) 2)) 0))
    (sqrt (+ (* dx dx) (* dy dy)))
)

(defmethod distance ((figura1 Rectangle)(figura2 Kolo))
	(setq dx (max (-(abs (-(x figura1)(x figura2))) (/ (a figura1) 2) 0)))
    (setq dy (max (-(abs (-(y figura1)(y figura2))) (/ (b figura1) 2) 0)))
    (sqrt (+ (* dx dx) (* dy dy)))
)

(defmethod distance ((figura1 Rectangle)(figura2 Rectangle))
	(setq dx (max (-(abs (-(x figura1)(x figura2))) (/ (+ (a figura1)(a figura2)) 2)) 0))
	(setq dy (max (-(abs (-(y figura1)(y figura2))) (/ (+ (b figura1)(b figura2)) 2)) 0))
	
	(sqrt (+ (* dx dx) (* dy dy)))
)


;;==============================================================================
;;Pole
(defgeneric pole (figura))

(defmethod pole ((figura Kolo))
	(* (r figura) (r figura) pi)
)

(defmethod pole ((figura Rectangle))
	(* (a figura) (b figura))
)

(defmethod pole((figura Punkt))
	0
)


(setf punkt1 (make-instance 'Punkt :x 0 :y 0))
(setf punkt2 (make-instance 'Punkt :x 0 :y 0))

(setf kolo1 (make-instance 'Kolo :r 1 :x 10 :y 10))
(setf kolo2 (make-instance 'Kolo :r 2 :x 8 :y 9))

(setf rect1 (make-instance 'Rectangle :a 1 :b 2 :x 1 :y 1))
(setf rect2 (make-instance 'Rectangle :a 2 :b 1 :x 2 :y 3))





(print (r kolo1));display radius
(print (x punkt1));display x
(print (pole kolo1))
(print (distance punkt1 punkt2))
(print (distance punkt1 kolo1))
(print (distance rect1 rect2))
(print (distance punkt1 rect1))

(print (distance rect2 kolo1))