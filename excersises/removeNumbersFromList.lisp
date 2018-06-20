(setq myList
    (list '(1 a s c c 2 3 4 5 as de r a "Hello" ))
)
(print myList)

(terpri)
(print "number list: ")
(setq numbers (list 1 2 3 4 5 6 7 8 9 10))
(print numbers)
(print "===============================")

(defvar *y* (list))


(print "y is empty, look: ")
(print *y*)

(defun usunLiczby()
    (print(remove-if (lambda(x) (and (numberp x) (evenp x)) )  '(x 2 d "ala" "ma" "kota" 6 8 12))) 
)


;;listp is list? oui