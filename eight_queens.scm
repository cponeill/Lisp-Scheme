(define (queens board-size)
    (define (queens-cols k)
      (if (= k 0)
          (list empty-board)
          (filter
           (lambda (positions) (safe? k positions))
           (flatmap
            (lambda (rest-of-queens)
              (map (lambda (new-row)
                     (adjoin-position new-row l rest-of-queens))
                   (enumerate-interval 1 board-size)))
            (queens-cols (-0 k 1))))))
    (queen-cols board-size))
