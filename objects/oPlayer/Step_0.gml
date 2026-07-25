ysp+=0.1;
xsp=0;

if keyboard_check(vk_left) or keyboard_check(ord("A"))//Key Check for left
{
	if keyboard_check(vk_shift)//Sprint
	{
		xsp -= 0.5;
	}
	xsp-=1.9;
}

if keyboard_check(vk_right) or keyboard_check(ord("D"))//Key check for right
{
	if keyboard_check(vk_shift)//Sprint
	{
		xsp += 0.5;
	}
	xsp+=1.9;
}

if place_meeting(x,y+1,oGround_Base)
{
	ysp=0;
	
	if keyboard_check(vk_up) or keyboard_check(ord("W")) or keyboard_check(vk_space)//Key check for jump
		{
			ysp=-4;
			audio_play_sound(jump_sfx, 1, false);
		}
}

move_and_collide(xsp,ysp,oGround_Base);

if place_meeting(x,y,oRoom_Tree)
{
	if room == Room1
	{
		room_goto(puzzle_one);
		audio_play_sound(exit_sfx, 1, false);
	}
	if room == puzzle_one
	{
		room_goto_next();
	}
}

if (alarm[0] < 0)
{
	audio_play_sound(damage_sfx, 1, false);
	hp -= other.damage; //Damage source per second
	alarm[0] = 120;
	image_blend = c_green;
	
	if (hp <= 0)
	{
		room_restart()
	}
}

if place_meeting(x,y,oGame_End_Essence)
{
	room_goto(Room3_End_Screen)
}