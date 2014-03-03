;; Defining procedures as Black Box Abstractions
;; Using Scheme (LISP dialect)

;; The following code gets the job done but the only procedure that is important to the users of the program
;; is "sqrt". The other procedures may only clutter their minds. 

(define (sqrt x)
  (sqrt-iter 1.0 x))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (improve guess x)
  (average guess (/ x guess)))


;; The following code is an example of "lexical scoping" and will help break up large programs into smaller pieces.
;; This will make the program easier to read (and maybe even run.)


(define (sqrt x)
	(define (good-enough? guess)
		(< (abs (- (square guess) x)) 0.001))
	(define (improve guess)
		(average guess (/ x guess)))
	(define (sqrt-iter guess)
		(if (good-enough? guess)
			guess
			(sqrt-iter (improve guess))))
	(sqrt-iter 1.0))
