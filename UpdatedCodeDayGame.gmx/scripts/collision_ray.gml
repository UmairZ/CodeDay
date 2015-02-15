//collision_ray(x1,y1,x2,y2,obj)
//based on icuurd12b42's laser script
//isolates the collision point by halving the interval
var xx1,yy1,xx2,yy2,xx,yy;
xx1=argument0;
yy1=argument1;
xx=argument2;
yy=argument3;
xx2=xx;
yy2=yy;
if (collision_line(xx1,yy1,xx,yy,argument4,1,0)<0)
    return -1;//early out

while(point_distance(xx1,yy1,xx,yy))
{
    if (collision_line(xx1,yy1,xx,yy,argument4,1,0))
    {
        xx2=xx;
        yy2=yy;
    }
    else
    {
        xx1=xx;
        yy1=yy;
    }
    xx=(xx1+xx2)/2;
    yy=(yy1+yy2)/2;
}
global.xo=xx;
global.yo=yy;