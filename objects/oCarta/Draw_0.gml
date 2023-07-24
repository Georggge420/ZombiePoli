var _activateX = lengthdir_x(10,direction);
var _activateY = lengthdir_y(10, direction);
activate = instance_position(x+_activateX,(y-8)+_activateY,Player)
if(activate != noone){
	step = max(step, 1);
}			
			

draw_sprite(sCarta,step,oCarta.x,oCarta.y);

		
