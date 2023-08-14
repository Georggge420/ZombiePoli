
function scriptPlayerSpeedUp(_speed){
	with(Player){
		global.speedW = max(0, global.speedW + _speed);
	}
	
	with(other){
	instance_destroy();
	}
}

function scriptPlayerAzucar(){
	with(Player){
		global.speedW = max(0, global.speedW + 1);
		global.speedR = max(0, global.speedR + 1);
	}
	
	with(other){
	instance_destroy();
	}
}

function scriptPlayerMonster(){
	with(Player){
		global.speedW  = max(0, global.speedW  + 0.5);
		global.AP = max(0, global.AP + 5);
	}
	
	with(other){
	instance_destroy();
	}
}


function scriptPlayerCuchillo(){
	with(Player){
		global.AP = max(0, global.AP + 10);
	}
	
	with(other){
	instance_destroy();
	}
}

function scriptPlayerChilaquiles(_coldNew){
	if(Player.healColdown <= 0){
		global.vida = max(0, global.vida+6);
		global.vidaTot = max(0, global.vidaTot+3);
		healColdown = _coldNew;
	}
	
	with(other){
	instance_destroy();
	}
}

function scriptPlayerTarjeta(){
	with(Player){
		global.speedW = max(0, global.speedW + 0.2);
		global.AP = max(0, global.AP + 5);
	}
	
	with(other){
	instance_destroy();
	}
}