if (hp <= 0)//TEMPORARY destroys instead of changes
{
	instance_destroy()	
}

var dist = point_distance(x, y, oPlayer.x, oPlayer.y);// Gets distance to player

if dist <= 128//Checks distance
{
	close = true;
}
else
{
	close = false;
}

if close == true//If close, do the thing
{
	if (alarm[1] <= 0)
	{
		alarm_set(1, 20);
	}
}