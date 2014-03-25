;; This code is pretty simple and self explanatory

(define temp
    (lambda (x y)
      (let ((am "The temperature is great this morning"))
        (let ((pm "The afternoon feels wonderful"))
          (let ((both "Today is great"))
            (cond
              ((> x y) am)
              ((< x y) pm)
              ((= x y) both)))))))
              
> (temp 80 90)
"The afternoon feels wonderful"
> (temp 90 80)
"The temperature is great this morning"
> (temp 90 90)
"Today is great"
