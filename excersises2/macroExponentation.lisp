;ZADANIE 3
(defmacro kwadratuj(&rest args)
	(cons 'progn 
		(mapcar (lambda (x) `(setf ,x (* ,x ,x))) args)
	)
)

(write (macroexpand '(kwadratuj 3 2)))