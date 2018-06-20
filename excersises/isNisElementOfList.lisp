;;nalezy x lista, sprawdza czy x nalezy do listy

(defun czyNalezy (n lista)

    (mapcar 
        (lambda (x) 
            (
                if (= x n)
                (t)
                (nil)
            )
        )
        lista
    )

)
;;error a proper list must not end with 1?
;; (print
;;     (czyNalezy
;;         1
;;         '(12 1 2)
;;     )
;; )


(defun czyNalezy2 (n lista)

    (if (member n lista)
    t nil)

)

(print (czyNalezy2 2 '(1 3 4)))
(print (czyNalezy2 2 '(2 3 4)))




