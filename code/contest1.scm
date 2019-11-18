(define (h n angle)
    (if (<= n 0) nil
        (begin
            (speed 10)
            (left angle)
            (h (- n 1) (- angle (* 2 angle)))
            (fd 10)
            (rt angle)
            (h (- n 1) angle)
            (fd 10)
            (h (- n 1) angle)
            (rt angle)
            (fd 10)
            (h (- n  1) (- angle (* 2 angle)))
            (left angle)
    ))
)



(h 5 90)
