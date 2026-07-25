// Inherit the parent event
event_inherited();

if (!fullscreen)
{
	window_set_fullscreen(true);
	fullscreen = true;
}
else
{
	window_set_fullscreen(false);
	fullscreen = false;
}