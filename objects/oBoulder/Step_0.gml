ysp+=0.1;

if place_meeting(x,y+ysp,oGround_Base)
{
	ysp=0;
}



if place_meeting(x-1, y, oPlayer) and !place_meeting(x+1,y,oGround_Base)//move and rotate boulder right
{
	move_and_collide(1, ysp, oGround_Base);
	angle -= 1;
}
else if place_meeting(x + 1, y, oPlayer) and !place_meeting(x-1,y,oGround_Base)//move and rotate boulder left
{
	move_and_collide(-1, ysp, oGround_Base);
	angle += 1;
}
else
{
	move_and_collide(0, ysp, oGround_Base);
}