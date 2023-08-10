
function scriptPlayerSpeedUp(_speed){
	with(Player){
		speedWalk = max(0, speedWalk + _speed);
	}
	
	with(other){
		instance_destroy();
	}

}