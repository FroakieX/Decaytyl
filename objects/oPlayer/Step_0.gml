ysp=+1
xsp=0

if keyboard_check(vk_left) or keyboard_check(ord("A"))
{
	xsp-=1.75
}

if keyboard_check(vk_right) or keyboard_check(ord("D"))
{
	xsp+=1.75
}

if keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_space)
{
	ysp=-4
}
move_and_collide(xsp,ysp,oGround,oGround_Base)