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
                      
;; List Operations
(define (list-ref items n)
  (if (null? 0)
    (car items)
    (list-ref (cdr items) (- n 1))))
(define squares (list 1 4 9 16 25))
(list-ref squares 2)
=> 9

;;
(define (number x)
  (cdr (cdr (cdr x))))
(define (last ls)
  (if (null? ls)
        0
        (cdr (number ls))))
(define odds (list 1 3 5 7 9))
(last odds)
=>'(9)
    


;; Even more randomness
(define first
  (lambda (l)
    (apply (lambda (x . y) x)
      (l)))
(define rest
  (lambda (l)
    (apply (lambda (x . y) l)))
    
(first '(a b c d))
=> 'a
(rest '(a b c d))
=> '(b c d)


;;
(define (memq item x)
    (cond ((null? x) false)
          ((eq? item (car x)) x)
          (else (memq item (cdr x)))))
(memq 'carrot '(pie cupcake cookie))
=> #f


;;
> (define (wage h)
    (+ 12 h)
    )
> (wage 12)
24
> 
