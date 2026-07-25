if place_meeting(x,y+1,oGround_Base)
{
	audio_play_sound(Grass_step, 0, true)
}
if keyboard_check(vk_shift)
{
	audio_play_sound(Grass_Run,0,true)
}