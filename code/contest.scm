;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: The Ancient Maze
;;;
;;; Description:
;;;   <Lo and Behold this Mess
;;;    Makes you feel as lost everyday
;;;    as I do in 61A>

(define (draw)
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
    )))



(h 5 90)

  (exitonclick))

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)