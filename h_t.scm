;; Here is the story of the Tortoise and the Hare written with Scheme (Lisp)

define list?
    (lambda (x)
      (define race
        (lambda (h t)
          (if (pair? h)
              (let ((h (cdr h)))
                (if (pair? h)
                    (and (not (eq? h t))
                         (race (cdr h) (cdr t)))
                    (null? h)))
              (null? h))))
      (race x x)))
