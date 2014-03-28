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


; More random and fun code

(define (cons x y)
    (lambda (m) (m x y)))
(define (car z)
    (z (lambda (p w) p)))
    
;; More Randomness
(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))
(define odds (list 1 3 5 7))
(length odds)
=> 4

;; This is from "The Little Schemer" and this is just my method of writing it down while I go through the book
(define rember
  (lambda (a lat)
    (conds
      ((null? a) (quote ())
      (else (cond
              ((eq? (car lat) a) (cdr lat))
              (else (rember a)
                      (cdr lat))))))))
    


