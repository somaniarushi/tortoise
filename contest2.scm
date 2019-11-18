(bgcolor 'black')
(define x 1)
speed(0)

(define (create x)
    (if (= x 700) 
        nil 
        (begin
            (color (color-find x))
            (speed 10)
            (circle (+ 3 x))
	        (rt 90.991)
	        (create (+ x 1)))))

(define (color-find x)
    (cond
        ((< x 100) "black")
        ((< x 200) "indigo")
        ((< x 300) "blue")
        ((< x 400) "green")
        ((< x 500) "yellow")
        ((< x 600) "orange")
        ((< x 700) "red")))

(create 0)
 
(exitonclick)
