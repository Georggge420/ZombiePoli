if(hitColdown == true){
	global.vida = global.vida - 1;
	
	alarm_set(0, 60);
	hitColdown = false;
}