
function scriptCalcAttack(_sprite){
	mask_index = _sprite;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,cEntidad,hitByAttackNow,false);
	
	if(hits > 0){
		for(var i = 0; i < hits; i++){
			//si no ha recibido el dano
			var hitID = hitByAttackNow[| i];
			if(ds_list_find_index(hitByAttack, hitID) == -1){
				ds_list_add(hitByAttack, hitID);
				with (hitID){
								if(entidadHitScript != -1) script_execute(entidadHitScript);
								
								
				}
			}
		}
	
	}
	
	ds_list_destroy(hitByAttackNow);
	
	mask_index = sprPlayerIdle;
}