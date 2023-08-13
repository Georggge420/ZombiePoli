
function scriptPlayerBonk(){
		hSpeed = lengthdir_x(speedBonk, direction-180);
		vSpeed = lengthdir_y(speedBonk, direction-180);
	
		moveDistanceRemaining = max(0, moveDistanceRemaining - speedBonk);
		var _collided = scriptPlayerCollision();
	
		sprite_index = sprPlayerBonk;
		image_index = CARDINAL_DIR - 2;
		
		z = sin(((moveDistanceRemaining / distanceBonk) * pi)) * distanceBonkHeight;
		
	
		if(moveDistanceRemaining <= 0){
			state = scriptPlayerStateFree;
		}
}