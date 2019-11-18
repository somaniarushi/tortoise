; 3D Circles

(bgcolor "black")
(define x 1)
(speed 10)

(define n 600)

(define (create x)
    (if (= x n) 
        nil 
        (begin
            (color (color-find x))
            (speed 10)

            ; Solution 1
            ; (circle (/ x 6) 180)
            ; (rt 90.991)

            (circle (/ x 4) 200)
            (rt 90.991)

            (create (+ x 1)))))

; RGB Only Color Find
(define (color-find x)
	(cond 
		; red to yellow
		((< x 100) 
			(rgb 
				1 
				(+ 0 (/ x 100)) 
				0))
		; yellow to green
		((< x 200)
			(rgb 
				(- 1 (/ (- x 100) 100)) 
				1 
				0))
		; green to cyan
		((< x 300)
			(rgb 
				0 
				1 
				(+ 0 (/ (- x 200) 100))))
		; cyan to blue
		((< x 400)
			(rgb 
				0 
				(- 1 (/ (- x 300) 100)) 
				1))
		; blue to violet
		((< x 500)
			(rgb 
				(+ 0 (/ (- x 400) 100)) 
				0 
				1))
		; violet to indigo
		((< x 600)
			(rgb 
				1
				0 
				(- 1 (/ (- x 500) 100))))

		)

	)
(create 0)
(hideturtle)
 
(exitonclick)
