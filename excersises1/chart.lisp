(defun wykres(f a b)	
	(let ((y))		
			(with-open-file (str "dane.txt"
								 :direction :output
								 :if-exists :supersede
								 :if-does-not-exist :create)
			
			(loop for i from a to b do
					(setq x i)
					(setq y (eval f))
					(write-line (concatenate 'string (write-to-string x) " " (write-to-string y))  str)
			)
			
			 (close str)
             (print "wykonano pomyslnie")
			 )
	)
)
(setq x 10);;global x
(wykres '(+ (sin x) ) -10 10)