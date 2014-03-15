;; Here is a procdure bound by an internal definiton.

let ()
    (define even?
      (lambda (x)
        (or (= x 0)
            (odd? (- x 1)))))
    (define odd?
      (lambda (x)
        (and (not (= x 0))
             (even? (- x 1)))))
    (even? 20))
;; => #t

