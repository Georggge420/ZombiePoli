function scriptPlayerPutazo(damage, coldNew){
		if(Player.hitColdown <= 0) && (global.vida > 0){
			global.vida = max(0, global.vida-damage);
			hitColdown = coldNew;
		}
		
		if(global.vida <= 0){
			scriptPlayerDead();
		}
}