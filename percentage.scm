; A simple way to print percentage. The following code will let you print the number 4.2%

(define (percentage x y) (cons x y))
(define (ten x) (car x))
(define (hun x) (cdr x))

(define (print x)
  (newline)
  (display (ten x))
  (display ".")
  (display (hun x))
  (display "%"))
  
(define four-two (percentage 4 2))

(print four-two)
=> 4.2%
