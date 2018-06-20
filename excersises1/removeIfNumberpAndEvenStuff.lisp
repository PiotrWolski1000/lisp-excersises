(defun usunLiczbyDodatnie()
    (print(remove-if (lambda(x) (if (numberp x)(> x 0)) )  '(1 a d 4 5 "abc" "cda" 6 7 8)
    ))     
)

(defun usunLiczby(x)
    (print(remove-if (lambda(x) (numberp x) )  '(x 2 d "ala" "ma" "kota" 6 8 12))) 
)

(usunLiczbyDodatnie)

(usunLiczby())
