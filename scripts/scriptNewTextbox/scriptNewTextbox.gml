
function scriptNewTextbox(msj, back){
	var _obj;
	if(instance_exists(oText)) _obj = oTextQueued; else _obj = oText;
	
	with(instance_create_layer(0,0,"Instances",_obj)){
		mensaje = msj
		background = back;  
		if(instance_exists(other)) originInstance = other.id else originInstance = noone;
	}
	
	with(Player){
		if(state != scriptPlayerLocked){
			lastState = state;
			state = scriptPlayerLocked;
		}
	}
}
