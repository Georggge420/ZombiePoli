if(instance_exists(Player)) && (position_meeting(Player.x,Player.y,id)){
	global.targetRoom = targetRoom;
	global.targetX = targetX;
	global.targetY = targetY;
	global.targetDirection = Player.direction;
	room_goto(targetRoom);
	instance_destroy();
	
}

