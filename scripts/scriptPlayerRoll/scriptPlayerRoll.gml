// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scriptPlayerRoll(){
	hSpeed = lengthdir_x(speedRoll, direction);
	vSpeed = lengthdir_y(speedRoll, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedRoll);
	var _collided = scriptPlayerCollision();
	
	sprite_index = spriteRoll;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR * _totalFrames) + ((1 - (moveDistanceRemaining / distanceRoll)) * _totalFrames);
	
	if(moveDistanceRemaining <= 0){
		state = scriptPlayerStateFree;
	}
	
	if(_collided){
		state = scriptPlayerBonk;
		moveDistanceRemaining = distanceBonk;
		scriptScreenShake(6,30);
	}
}