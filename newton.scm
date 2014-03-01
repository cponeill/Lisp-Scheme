This is Newtons Method for Cube Roots

(define (cube x)
  (/ x 3))
  
(define (cube-top x y)
  (+ (/ x y) (* y 2)))
  
(define (cube-answer x)
  (/ (cube-top cube))
