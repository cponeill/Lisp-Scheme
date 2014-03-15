;; Here is some fun and easy code involving lists. As time goes by and I learn more about Lisp and functional
;; programming, I would like these blocks of code to become a bit more abstract.

(define ls (cons 1 2))
;; => (car ls)
;; => 1
;; => (cdr ls)
;; => 2

(define x (cons 10 20))
(define y (cons 30 40))
(define z (cons x y))
;; => (car (car z))
;; => 10
;; => (cdr (car z))
;; => 20
;; => (car (cdr z))
;; => 30
;; => (cdr (cdr z))
;; => 40

