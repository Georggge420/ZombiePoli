
function scriptRoomTransition(Type, TargetRoom){
	if(!instance_exists(objTransition)){
		with(instance_create_depth(0,0,-9999,objTransition)){
			type = Type
			target = TargetRoom;
		}
	}else show_debug_message("Tratando de hacer la trancicion mientras la trancicion esta ocurriendo!");
}