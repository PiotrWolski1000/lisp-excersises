(defun dzien (day)
    (setq day (mod day 7))
    (case day
        (0 (format t "~% Sunday"))
        (1 (format t "~% Monday"))
        (2 (format t "~% Tuesday"))
        (3 (format t "~% Wednesday"))
        (4 (format t "~% Thursday"))
        (5 (format t "~% Friday"))
        (6 (format t "~% Saturday"))
     )
)

(print (dzien 9))
