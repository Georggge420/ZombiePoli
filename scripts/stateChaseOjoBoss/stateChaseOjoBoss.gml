
function stateChaseOjoBoss(){
	sprite_index = sprMove;
	if(instance_exists(target)){
		xTo = target.x;
		yTo = target.y;
		
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		dir = point_direction(x,y,xTo,yTo);
		if(_distanceToGo > enemySpeed){
			hSpeed = lengthdir_x(enemySpeed,dir);
			vSpeed = lengthdir_y(enemySpeed,dir);
		}else{
			hSpeed = lengthdir_x(_distanceToGo,dir);
			vSpeed = lengthdir_y(_distanceToGo,dir);
		}
		
		if(hSpeed != 0) image_xscale = sign(hSpeed);
		
		enemigoTileCollision();
		
	}
	
	//checkear si esta cerca para atacar
	
	if(instance_exists(target)) && (point_distance(x,y,target.x,target.y) <= enemyAttackRadius){
		state = ENEMYSTATE.ATTACK;
		sprite_index = sprAttack;
		image_index = 0;
		image_speed = 1.0;
		xTo += lengthdir_x(16,dir);
		yTo += lengthdir_y(16,dir);
	
	}
}