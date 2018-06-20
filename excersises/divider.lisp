(defun dzielnik (n)
    ;; (funcall 
    ;;     (lambda (x) 
    ;;         (if (= (mod x n) 0)
    ;;             (t)
    ;;             (nil)
    ;;         )
    ;;     )
    ;; lista
    ;; )
    (lambda (x) 
        (if (= (mod x n) 0 )
            (print x)
            ;; (t) 
            ;; (nil)
        )
    )

)

;; (print (funcall (dzielnik 5)  '(1 2 10 15)))
(print (remove-if-not (dzielnik 5) '(1 2 10 15)))


;; (print (dzielnik 4))

;; (print (dzielnik 3 (list 1 2 3)))
;; (print (dzielnik 3))