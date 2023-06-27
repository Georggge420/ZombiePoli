if(healColdown == true){
	global.vida += 1;
	
	alarm_set(0, 60);
	healColdown = false;
}

/*
global.vida += 1;

with(other){
instance_destroy();
}
*/