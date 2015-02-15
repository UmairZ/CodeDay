//move_outside_obj(direction,maxdist,object)
repeat(argument1)
{
    x+=lengthdir_x(1,argument0);
    y+=lengthdir_y(1,argument0);
    if (!place_meeting(x,y,argument2))
    {
        x+=lengthdir_x(1,argument0+180);//don't bounce around
        y+=lengthdir_y(1,argument0+180);
        break
    }
}