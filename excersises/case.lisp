(defun ocena (n)
    (case n
        (2 (format t "~% ndst"))
        (3 (format t "~% dst"))
        (4 (format t "~% dobry"))
        (5 (format t "~% b.dobry"))
     )
)

(print (ocena 3))