
(defun parzyste (a b)
    (loop for i from a to b do
        (if (evenp i) (print i) )
    )
)



(print (parzyste 10 20) )