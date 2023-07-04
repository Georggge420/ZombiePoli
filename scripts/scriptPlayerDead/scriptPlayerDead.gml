function scriptPlayerDead(){
	Player.estadoVivo = false;
	hSpeed = 0;
	vSpeed = 0;
	
	if(sprite_index != sprPlayerDead){
		sprite_index = sprPlayerDead;
		image_index = 0;
		image_speed = 0.7;
	}
	
	//Animation ending this frame?
	if(image_index + image_speed > image_number){
		image_speed = 0;
		image_index = image_number - 1;
	}
}