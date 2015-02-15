//scr_align(gravity,maxln,accuracy);
var xx,yy,ndir,accuracy,g,maxln;
maxln=max(argument1,1);
g=0;//break the collision checking loop
accuracy=max(argument2,1);
ndir=gravity_direction;//default new direction

//send out a circle with increasing radius to determine closest point
for(i=0;(i<maxln && g==0);i+=accuracy;)
    if (collision_circle(x,y,i,planet_par,1,0))
        //once a circle collision occurs, check points on the circumference of the circle for exact position
        for(j=gravity_direction;(j<gravity_direction+360 && g==0);j+=accuracy;)
            if (position_meeting(x+lengthdir_x(i,j),y+lengthdir_y(i,j),planet_par)){
                ndir=j;
                g=1;
                break;
            }
gravity_direction=ndir;//new direction


//if standing on ground gravity=0
if (place_meeting(x+lengthdir_x(speed,gravity_direction),y+lengthdir_x(speed,gravity_direction),planet_par))
    gravity=0;
else
    gravity=argument0;


//check for terrain height 1 pixel to the right
collision_ray(
    x+lengthdir_x(4,gravity_direction+90),
    y+lengthdir_y(4,gravity_direction+90),
    x+lengthdir_x(4,gravity_direction+90)+lengthdir_x(maxln,gravity_direction),
    y+lengthdir_y(4,gravity_direction+90)+lengthdir_y(maxln,gravity_direction),planet_par);
xx=global.xo;
yy=global.yo;


//check for terrain height 1 pixel to the left
collision_ray(
    x+lengthdir_x(4,gravity_direction-90),
    y+lengthdir_y(4,gravity_direction-90),
    x+lengthdir_x(4,gravity_direction-90)+lengthdir_x(maxln,gravity_direction),
    y+lengthdir_y(4,gravity_direction-90)+lengthdir_y(maxln,gravity_direction),planet_par);

    
return (point_direction(xx,yy,global.xo,global.yo)+180);