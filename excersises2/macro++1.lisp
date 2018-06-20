;ZADANIE 2

(defmacro ++1 (&rest args)
  (cons 'progn (mapcar 
    (lambda (x) 
      (list 'incf x))
      args
  ))
)

;; (write (macroexpand '(++1 a b c d e f g h i j k 1 2)))

;; (write (macroexpand '(++1 x y z)))

;; (write (macroexpand '(++1 a)))
(write (macroexpand (++1 0)))

;; (write ++1 1 2 3 4 5)



