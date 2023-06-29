
function scriptPlayerHealUp(_Healup, _coldNew){
	if(Player.healColdown <= 0){
	global.vidaTot = max(0, global.vidaTot+_Healup);
	healColdown = _coldNew;
	} 
	
	
	with(other){
	instance_destroy();
	}
	
}