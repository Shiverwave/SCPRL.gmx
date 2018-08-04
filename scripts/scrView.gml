//arg0 - viewing obj
//arg1 - targe obj
//arg2 - fov
HoldInview = 0;

ViewBoundaryLeft = (argument0.direction+(argument2/2)) mod 360;
ViewBoundaryRight = argument0.direction-(argument2/2);
if (ViewBoundaryRight < 0) {
   ViewBoundaryRight = 360+ViewBoundaryRight;
}

if (ViewBoundaryLeft >= ViewBoundaryRight) {
   if ((point_direction(argument0.x,argument0.y,argument1.x,argument1.y) >= ViewBoundaryRight && point_direction(argument0.x,argument0.y,argument1.x,argument1.y) <= ViewBoundaryRight)) {
      HoldInview=1;
   }
}
else 
{
   if ((point_direction(argument0.x,argument0.y,argument1.x,argument1.y) >= ViewBoundaryRight && point_direction(argument0.x,argument0.y,argument1.x,argument1.y) <= ViewBoundaryRight)) {
      HoldInview=1;
   }
}
return HoldInview;
