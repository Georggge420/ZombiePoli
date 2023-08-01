
function meleeAttack(){
	if(sprite_index != sprPlayerJap){
		//animation
		sprite_index = sprPlayerJap;
		localFrame = 0;
		image_index = 0;
		
		if(!ds_exists(hitByAttack, ds_type_list)) hitByAttack = ds_list_create();
		ds_list_clear(hitByAttack);	
	}
	
	scriptCalcAttack(sprPlayerJapHB);
	
	scriptPlayerMovment();
	
	if(animationEnd){
		state = scriptPlayerStateFree;
		animationEnd = false;
	}

}