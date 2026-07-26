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
	if room == Home
	{
		room_goto_next()
		audio_play_sound(exit_sfx, 1, false);
	}
	if room == puzzle_two
	{
		room_goto_next();
	}
}
if (alarm[0] < 0)
	{
		audio_play_sound(damage_sfx, 1, false);
		hp -= other.damage; //Damage source per second
		alarm[0] = 150;
		image_blend = c_green;
	}
	
if (hp <= 0)
	{
		room_restart()
	}

if place_meeting(x,y,oGame_End_Essence)
{
	room_goto(End_Screen)
}

if place_meeting(x,y,oGrass_Spikes)
{
	room_restart()
}
if place_meeting(x,y, oTutorial_Dialog)
{
	create_dialog([
	{
		name: "Tutori",
		msg: "Press Space to Jump. The movement keys are wasd. Sprint with shift. K is to send out waves of sound."
	}
	])
}
if place_meeting(x,y, oTutorial_Dialog_1)
{
	create_dialog([
	{
		name: "Tutori",
		msg: "You can push Boulders with your goopy hands."
	}
	])
}
if place_meeting(x,y, oTutorial_Dialog_2)
{
	create_dialog([
	{
		name: "Tutori",
		msg: "Plants help keep you alive longer by absorbing their life essence."
	}
	])
}
if place_meeting(x,y, oTutorial_Dialog_3)
{
	create_dialog([
	{
		name: "Tutori",
		msg: "You are feeling very sick after drinking with the band... How about taking a drink from the well ahead!."
	}
	])
}
if place_meeting(x,y, oFountain)
{
	create_dialog([
	{
		name: "Tutori",
		msg: "OH NO! You look enev worse after drinking that. Quickly go ahead into the field ahead. It always makes you feel better"
	}
	])
}