var _inst = instance_create_depth(x, y, depth, oAttack);
var _hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _ver = keyboard_check(ord("S")) - keyboard_check(ord("W"));

_inst.damage *= damage;
_inst. image_angle = point_direction(0, 0, _hor, _ver);
