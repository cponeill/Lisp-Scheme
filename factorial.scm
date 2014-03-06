;; Here are a couple of fun ways to write factorials using Scheme

(define factorial
  (lambda (n)
    (let fact ((i n))
      (if (= i 0)
        1
        (* i (fact (- i 1)))))))
        
;; And another way

(define factorial
  (lambda (n)
    (let fact ((i n) (a 1))
    (if (= i 0)
        a
        (fact (- i 1) (* a i))))))
