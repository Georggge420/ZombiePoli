function scriptPlayerHeal(_vida, _coldNew){
	if(Player.healColdown <= 0){
		global.vida = max(0, global.vida+_vida);
		healColdown = _coldNew;
	} 
	
	with(other){
	instance_destroy();
	}
}