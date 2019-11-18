from turtle import *
# bgcolor('black')
speed(10)

def create(x):
    while x<800:
        color_find(x)
        circle(x+3)
        rt(90.991)
        x=x+1

def color_find(x):
    # blue
    if x< 200:
        pencolor((0.050, (0.050 + (x/1000)), 0.250))
        return
    # green
    if x<400:
        pencolor((0.050, 0.250, 0.250- (x-200)/1000))
        return
    # yellow
    if x<600:
        pencolor((0.050+(x-400)/1000, 0.250, 0.060))
        return
    # red
    if x<800:
        pencolor((0.250, 0.250-(x-600)/1000,0.060))
        return

create(0)
 
exitonclick()
