//arg0 = viewing object
//arg1 = target object
//arg2 = FOV

HoldInview=0;

ViewBoundaryLeft=(argument0.direction+(argument2/2)) mod 360;
ViewBoundaryRight=argument0.direction-(argument2/2);
if (ViewBoundaryRight<0)
ViewBoundaryRight=360+ViewBoundaryRight;

if (ViewBoundaryLeft>=ViewBoundaryRight)
{
    if ((point_direction(argument0.x,argument0.y,argument1.x,argument1.y)>=ViewBoundaryRight&&point_direction(argument0.x,argument0.y,argument1.x,argument1.y)<=ViewBoundaryLeft)||(point_direction(argument0.x,argument0.y,argument1.x+((sprite_xoffset-sprite_xoffset)+sprite_width),argument1.y)>=ViewBoundaryRight&&point_direction(argument0.x,argument0.y,argument1.x+((sprite_xoffset-sprite_xoffset)+sprite_width),argument1.y)<=ViewBoundaryLeft)||(point_direction(argument0.x,argument0.y,argument1.x+((sprite_xoffset-sprite_xoffset)+sprite_width),argument1.y+((sprite_yoffset-sprite_yoffset)+sprite_height))>=ViewBoundaryRight&&point_direction(argument0.x,argument0.y,argument1.x+((sprite_xoffset-sprite_xoffset)+sprite_width),argument1.y+((sprite_yoffset-sprite_yoffset)+sprite_height))<=ViewBoundaryLeft)||(point_direction(argument0.x,argument0.y,argument1.x,argument1.y+((sprite_yoffset-sprite_yoffset)+sprite_height))>=ViewBoundaryRight&&point_direction(argument0.x,argument0.y,argument1.x,argument1.y+((sprite_yoffset-sprite_yoffset)+sprite_height))<=ViewBoundaryLeft))
    HoldInview=1;
}

else
{
    if ((point_direction(argument0.x,argument0.y,argument1.x,argument1.y)>=ViewBoundaryRight||point_direction(argument0.x,argument0.y,argument1.x,argument1.y)<=ViewBoundaryLeft)||(point_direction(argument0.x,argument0.y,argument1.x+((sprite_xoffset-sprite_xoffset)+sprite_width),argument1.y)>=ViewBoundaryRight||point_direction(argument0.x,argument0.y,argument1.x+((sprite_xoffset-sprite_xoffset)+sprite_width),argument1.y)<=ViewBoundaryLeft)||(point_direction(argument0.x,argument0.y,argument1.x+((sprite_xoffset-sprite_xoffset)+sprite_width),argument1.y+((sprite_yoffset-sprite_yoffset)+sprite_height))>=ViewBoundaryRight||point_direction(argument0.x,argument0.y,argument1.x+((sprite_xoffset-sprite_xoffset)+sprite_width),argument1.y+((sprite_yoffset-sprite_yoffset)+sprite_height))<=ViewBoundaryLeft)||(point_direction(argument0.x,argument0.y,argument1.x,argument1.y+((sprite_yoffset-sprite_yoffset)+sprite_height))>=ViewBoundaryRight||point_direction(argument0.x,argument0.y,argument1.x,argument1.y+((sprite_yoffset-sprite_yoffset)+sprite_height))<=ViewBoundaryLeft))
    HoldInview=1;
}

return HoldInview;
