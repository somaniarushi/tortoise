from turtle import *
# bgcolor('black')
speed(10)

def create(x):
    while x<400:
        color_find(x)
        fd(x+1)
        rt(90.991)
        x=x+1

def color_find(x):
    # blue
    if x<100:
        pencolor((0, 0+ x/100, 1))
        return
    # green
    if x<200:
        pencolor((0, 1, 1-(x-100)/100))
        return
    # yellow
    if x<300:
        pencolor((0+(x-200)/100, 1, 0))
        return
    # red
    if x<400:
        pencolor((0, 1-(x-300)/100, 1))
        return

create(0)
 
exitonclick()
