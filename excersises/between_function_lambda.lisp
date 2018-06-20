;; (defun between (a b) 
;;    (funcall  
;;         (lambda (x) 
;;             (and (> x a) (< x b))) 
;;          (list 1 2 3 4 5 6)
;;         )

;;     ;; (lambda (x) (and (> x a) (< x b)))
;; )

;; (between 2 4)

(defun between (a b)
	(lambda (x) (and (>= x a)(<= x b)))
)
(print (remove-if-not (between 5 8)  '(1 2 3 4 5 6 7 8 9 10)))
