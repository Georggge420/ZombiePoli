if(global.vidaTot > 7){ global.vidaTot = 7;}
if(global.vidaTot < 0){ global.vidaTot = 0;}

if(global.vida > 20){ global.vida = 20;}
if(global.vida < 0){ global.vida = 0;}


if(global.vida > 6 && global.vidaTot == 0){
		global.vida=6;
}

if(global.vida > 8 && global.vidaTot == 1){
		global.vida=8;
}

if(global.vida > 10 && global.vidaTot == 2){
		global.vida=10;
}

if(global.vida > 12 && global.vidaTot == 3){
		global.vida=12;
}

if(global.vida > 14 && global.vidaTot == 4){
		global.vida=14;
}

if(global.vida > 16 && global.vidaTot == 5){
		global.vida=16;
}

if(global.vida > 18 && global.vidaTot == 6){
		global.vida=18;
}

if(global.vida > 20 && global.vidaTot == 7){
		global.vida=20;
}

xview = camera_get_view_x(view_camera[0]);
yview = camera_get_view_y(view_camera[0]);

draw_sprite(sprVidaRojo, global.vida, xview+32, yview+32);
draw_sprite(sprVidaContorno, global.vidaTot, xview+32, yview+32);
