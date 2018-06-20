(defun meteo (temp)
    (cond 
        ((> 30 temp) (print "upał") )
        ;; ((> 20 temp) (print "wiosna") )
        ((< 0 temp) (if (> temp  -20) (print "siarczysty mróz brbrbrrrrrr") (print "mróz") ) )
        ;; ((= 0 temp) (print "zero") )

    )

)



(print (meteo 40))
(print (meteo 20))
(print (meteo -10))
(print (meteo 0))
