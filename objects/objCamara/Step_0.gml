if(instance_exists(follow)){
	xTo =follow.x;
	yTo =follow.y;
}

x += (xTo - x)/15;
y += (yTo - y)/15;

x = clamp(x, viewWidthHalf, room_width-viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height-viewHeightHalf);

x += random_range(-shakeRamin,shakeRamin);
x += random_range(-shakeRamin,shakeRamin);

shakeRamin = max(0, shakeRamin - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam,x - viewWidthHalf, y - viewHeightHalf);

