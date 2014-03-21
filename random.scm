; This is just random Scheme/Lisp code that I am writing as practice. Some of it will be pretty simple and I would like
; to write longer and more complicated algorithms as I understand this language more thoroughly.

(define area
  (lambda (length width)
    (* area width)))
    
=> (area 3 4)
=> 12

; Lexical Variables

(define x 9)
(define add2
  (lambda (x)
    (+ x 2)))

=> (add2 3)
=> 5
=> x
=> 9
=> (add2 x)
=> 11
