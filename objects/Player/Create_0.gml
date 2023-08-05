state = scriptPlayerStateFree;
stateAttack = meleeAttack;
hitByAttack = -1;
lastState = state;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));


image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 4.0;
speedRoll = 6.0;
distanceRoll = 200;
spriteRoll = sprPlayerRoll;
spriteRun = sprPlayerRun;
spriteIdle = sprPlayerIdle;
localFrame=0;
distanceBonk = 80;
distanceBonkHeight = 50;
speedBonk = 1.5;
z=0;


global.vidaTot = 0;
global.vida=2;
hitColdown = 0;
healColdown = 0;
estadoVivo=true;

if(global.targetX != -1){
	x=global.targetX;
	y=global.targetY;
	direction = global.targetDirection;
}



