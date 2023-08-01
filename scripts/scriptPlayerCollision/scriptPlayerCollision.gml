
function scriptPlayerCollision(){
var collision = false; 
var _listaEntidades = ds_list_create();

//Horizontal tiles
if(tilemap_get_at_pixel(collisionMap, x + hSpeed, y)){
	x -= x mod TILE_SIZE;	
	if(sign(hSpeed) == 1) x += TILE_SIZE - 1;
	hSpeed = 0;
	collision = true;
}

//etnidades horizontal

var _cantidadEntidades =instance_position_list(x + hSpeed, y, cEntidad, _listaEntidades, false);
var _snapX;
while(_cantidadEntidades > 0){
	var _entidadCheck = _listaEntidades[| 0];
	if(_entidadCheck.entidadCollision == true){
		if(sign(hSpeed) == -1) _snapX = _entidadCheck.bbox_right+1;
		else _snapX = _entidadCheck.bbox_left -1;
		x = _snapX;
		hSpeed = 0;
		collision = true;
		_cantidadEntidades = 0;
	}
	ds_list_delete(_listaEntidades,0);
	_cantidadEntidades--;
}

//Commit
x += hSpeed


ds_list_clear(_listaEntidades);

//Vertical tiles
if(tilemap_get_at_pixel(collisionMap, x, y + vSpeed)){
	y -= y mod TILE_SIZE;	
	if(sign(vSpeed) == 1) y += TILE_SIZE - 1;
	vSpeed = 0;
	collision = true;
}


var _cantidadEntidades =instance_position_list(x, y + vSpeed, cEntidad, _listaEntidades, false);
var _snapY;
while(_cantidadEntidades > 0){
	var _entidadCheck = _listaEntidades[| 0];
	if(_entidadCheck.entidadCollision == true){
		if(sign(vSpeed) == -1) _snapY = _entidadCheck.bbox_bottom+1;
		else _snapY = _entidadCheck.bbox_top -1;
		y = _snapY;
		vSpeed = 0;
		collision = true;
		_cantidadEntidades = 0;
	}
	ds_list_delete(_listaEntidades,0);
	_cantidadEntidades--;
}

//Commit
y += vSpeed

ds_list_destroy(_listaEntidades);

return collision;
}
