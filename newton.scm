This is Newtons Method for Cube Roots

(define (square y)
  (* y y))
  
(define (cube x)
  (/ x 3))
  
(define (cube-top x)
  (+ (/ x square) (* square 2)))
  
(define (cube-answer x)
  (/ (cube-top cube))
