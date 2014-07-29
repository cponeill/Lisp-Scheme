;; This is Newtons Method for Cube Roots

(define (cube x)
  (/ x 3))
  
(define (cube-top x y)
  (+ (/ x y) (* y 2)))
  
(define (cube-answer x)
  (/ (cube-top cube))
  

;; and here it is for Squares

(define (square x)
  (/ x 2))
  
(define (square-top x y)
  (+ (/ x y) (* y 2)))
  
(define (square-answer x)
  (/ (square-top square))
