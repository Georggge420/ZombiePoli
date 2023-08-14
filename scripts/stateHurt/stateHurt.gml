
function stateHurt(){
	sprite_index = sprHit;
	var _distanceToGo = point_distance(x,y,xTo,yTo);
	if(_distanceToGo > enemySpeed){
		image_speed = 1;
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(enemySpeed, dir);
		vSpeed = lengthdir_y(enemySpeed, dir);
		if(hSpeed != 0) image_xscale = -sign(hSpeed);
		
		if(enemigoTileCollision()){
			xTo = x;
			yTo = y;
		}
	}else{
		xTo = x;
		yTo = y;
		state = ENEMYSTATE.CHASE;
	}

}