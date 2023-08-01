var _activateX = lengthdir_x(10,direction);
var _activateY = lengthdir_y(10, direction);
var activate = instance_position(x+_activateX,(y-8)+_activateY,Player)
if(activate != noone){
	step = max(step, 1);
	imgNum = 0;
}

draw_sprite_ext(
	sprite_index, 
	imgNum,
	floor(x),
	floor(y-z),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
	);



