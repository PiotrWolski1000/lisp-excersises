;;ZADANIE 1
(defmacro plus (&rest args)
  `(+ ,@args)
)
(write (macroexpand '(plus 1 2 3 4 x)))

(write (plus 5 5 5 5))
