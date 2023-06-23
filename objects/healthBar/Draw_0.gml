if(global.vidaTot > 8){ global.vidaTot = 8;}
if(global.vidaTot < 0){ global.vidaTot = 0;}

if(global.vida > 21){ global.vida = 21;}
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

draw_sprite(sprVidaRojo, global.vida, 16, 112);
draw_sprite(sprVidaContorno, global.vidaTot, 16, 112);
