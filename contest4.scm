(bgcolor 'black')
(define x 1)
(speed 10)

(define (create x)
    (if (= x 800) 
        nil 
        (begin
            (color (color-find x))
            (speed 10)
            (circle (+ 3 x))
            (rt 90.991)
            (create (+ x 1)))))

; RGB Only Color Find
(define color-find)

; (define (color-find x)
;     (cond
;         ; blue
;         ((< x 200) 
;             (rgb 0. (+ 0.050 (/ x 100)) 0.250))
;         ; green
;         ((< x 400)
;             (rgb 0.050 0.250 (- 0.250 (- (/ x 100) 200))))
;         ; yellow
;         ((< x 600) 
;             (rgb (+ 0.050 (- (/ x 100) 400)) 0.250 0.060))
;         ; red
;         ((< x 800) 
;             (rgb 0.250 (- 0.250 (- (/ x 100) 0.060)) 0.060))))

(create 0)
 
(exitonclick)
