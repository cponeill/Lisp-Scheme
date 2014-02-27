(These are just quick examples that I am learning while going through SICP and the Little Schemer)

(define (square x)
  (* x x))
  
(define (sum x y)
  (+ (square x) (square y)))
  
(define (x a)
  (sum (+ a 1) (* a 2)))
