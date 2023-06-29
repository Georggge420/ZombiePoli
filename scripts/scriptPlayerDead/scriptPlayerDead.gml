function scriptPlayerDead(){
	Player.estadoVivo = false;
	
	if(sprite_index != sprPlayerDead){
		Player.action = "Dead";
		Player.face = "";
		image_index = 0;
		image_speed = 0.7;
	}
	
	//Animation ending this frame?
	if(image_index + image_speed > image_number){
		image_speed = 0;
		image_index = image_number - 1;
	}
}