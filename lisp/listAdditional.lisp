(setq l1 '(10 20 30 40))
(format t "Current List: ~a~%" l1)

(setq last (last l1))
(format t "Last Element: ~a [last]~%" last)

(if (member 50 l1)
    (format t "40 is in the list. [member]~%")) 

(setq rev (reverse l1))
(format t "Reverse List: ~a [reverse]~%" rev)

(setq newList (append l1 '(90)))
(format t "Appended List: ~a [append]~%" newList)
