(defun pogoda (x)

    (cond 
        ((< x -10) "mrooz!!!")
        ((< x 0) "mniejszy mroz")
        ((< x 15) "jest ok")
        ((< x 25) "jest cieplo")
        (t "upal")
    )
)

(print (pogoda 10 ))
(print (pogoda 0 ))
(print (pogoda 15 ))
(print (pogoda -21 ))
(print (pogoda 30 ))