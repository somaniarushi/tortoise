; 3D Circles: Lesser Circles

(bgcolor "black")
(define x 1)
(speed 10)

(define n 300)

(define (create x)
    (if (= x n) 
        nil 
        (begin
            ;(color (color-find x))
            ; (color (one-color x))
            (color (one-color-rev x))
            (speed 10)

            ; Solution 1
            ; (circle (/ x 6) 180)
            ; (rt 90.991)

            (circle (/ x 2) 180)
            (rt 90.991)

            ; (circle (/ x 2) 270)
            ; (rt 180.991)

            (create (+ x 1)))))

; RGB Only Color Find
(define (color-find x)
	(define first (/ n 6))
	(define second (* 2 (/ n 6)))
	(define third (* 3 (/ n 6)))
	(define fourth (* 4 (/ n 6)))
	(define fifth (* 5 (/ n 6)))
	(define sixth (* 6 (/ n 6)))
	(cond 
		; red to yellow
		((< x first) 
			(rgb 
				1 
				(+ 0 (/ x first)) 
				0))
		; yellow to green
		((< x second)
			(rgb 
				(- 1 (/ (- x first) first)) 
				1 
				0))
		; green to cyan
		((< x third)
			(rgb 
				0 
				1 
				(+ 0 (/ (- x second) first))))
		; cyan to blue
		((< x fourth)
			(rgb 
				0 
				(- 1 (/ (- x third) first)) 
				1))
		; blue to violet
		((< x fifth)
			(rgb 
				(+ 0 (/ (- x fourth) first)) 
				0 
				1))
		; violet to indigo
		((< x sixth)
			(rgb 
				1
				0 
				(- 1 (/ (- x fifth) first))))

		)

	)

(define (one-color x)
	(rgb (+ 0 (/ x n)) (+ 0 (/ x n)) (+ 0 (/ x n))))

(define (one-color-rev x)
	(rgb (- 1 (/ x n)) (- 1 (/ x n)) (- 1 (/ x n))))


(create 0)
(hideturtle)
 
(exitonclick)
