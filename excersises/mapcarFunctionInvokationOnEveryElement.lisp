(defun do3 (x)
  (* x x x)
)

(print (mapcar #'do3 '(1 2 3 4 5 6)))

(print 
    (mapcar 
        (lambda (x) 
            (if 
                (and (> x 10) (< x 100) (evenp x))
                (do3 x) 
                nil
            )
        )

        '(1 9 10 12 13 14 15 16)
    )

)


;; (mapcar (lambda (x) (* x x)) '(1 2 3 4 5))