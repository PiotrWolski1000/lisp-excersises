(defun above (x y)
	(funcall (lambda (val) (> val y)) x)
  ;;((lambda (y) (> y x))) to return lamba  
)


(defun divider (numb x)
  (funcall (lambda(n) (= (mod n x) 0)) (numb))
)



(print (divider 15 4))
(print (above (17 1 2 3) 3))