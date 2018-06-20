;;pseudokod
;; lisa_sukcesow = [];//pusta lista
;;f(n){
;;  for(i = 2;i<=n/2;i++){ 
;;     while(n%i != 0 && x/i == 1)
;;         list.append(i);
;;   }
;;}


(defun rozklad(x)
    (setq mylist nil)



    (loop for i from 2 to (/ x 2)
        do 
            (loop while (or (= (mod x i) 0) (= (/ x i) 1)) 
              do 
                (setq mylist (append mylist (list i)))

                (setf x (/ x i))
            )
    )
    (print mylist)
)

(rozklad 123)





;; (defun rozklad(x)
;;     (setq mylist '())

;;     (loop for i from 2 to (/ x 2)
;;         do 
;;             (loop while (or (= (mod x i) 0) (= (/ x i) 1)) 
;;               do 
;;                 (append '(mylist) '(i))
;;                 (print i)
;;                 (setf x (/ x i))
;;                 ;;(print mylist)
;;             )
;;     )
;; )
