;; Here is some fun and easy code involving lists.

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

