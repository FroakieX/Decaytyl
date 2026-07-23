dir = point_direction(x, y, oPlayer.x, oPlayer.y);

if dir <= 90//up+right
{
	x += 1;
	y -= 1;
}
else if dir <= 180//down+right
{
	x += 1;
	y += 1;
}
else if dir <= 270//down+left
{
	x -= 1;
	y += 1;
}
else//up+right
{
	x -= 1;
	y -= 1;
}