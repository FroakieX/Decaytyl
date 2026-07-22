if (alarm[1] < 0)
{
	hp -= other.damage
	image_blend = c_olive
	alarm[1] = 20
	
	if (hp <= 0)
	{
		instance_destroy()	
	}
}