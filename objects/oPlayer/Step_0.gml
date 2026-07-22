ysp+=0.1
xsp=0

if keyboard_check(vk_left) or keyboard_check(ord("A"))
{
	xsp-=1.9
}

if keyboard_check(vk_right) or keyboard_check(ord("D"))
{
	xsp+=1.9
}

if place_meeting(x,y+1,oGround_Base)
{
	ysp=0
	
if keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_space)
	{
	ysp=-4
	}
}

move_and_collide(xsp,ysp,oGround_Base)

if mouse_check_button_pressed(mb_left)
{
	instance_create_layer(x,y,"Instances",oDecay)
}

if place_meeting(x,y,oRoom_Tree)
{
	room_goto_next()
}
if (alarm[0] < 0)
{
	hp -=	other.damage
	alarm[0] = 60
	image_blend = c_green
	
	if (hp <= 0)
	room_restart()
}