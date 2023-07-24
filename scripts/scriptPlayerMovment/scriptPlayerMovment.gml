//Update spirte
function scriptPlayerMovment(){
	
	var _totalFremes = sprite_get_number(sprite_index) / 4;
	image_index = localFrame + (CARDINAL_DIR  * _totalFremes);
	localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
	
	//if animation would loop on next game step
	if(localFrame >= _totalFremes){
		animationEnd = true;
		localFrame -= _totalFremes;
	}else animationEnd = false;
	
}