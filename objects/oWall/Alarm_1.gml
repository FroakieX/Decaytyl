image_blend = c_white

hp -= 1;

if close == true
{
	instance_create_layer(x, y, "Instances", oDecay);
}