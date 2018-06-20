(defun fib (n)
    (cond 
        ((= n 0) 0)
        ((= n 1) 1)
        ((= n 2) 1)
        (t 
            (+ 
                (fib (- n 3)) 
                (fib (- n 2)) 
                (fib (- n 1)))
        )
    )
)
(print (fib 10))