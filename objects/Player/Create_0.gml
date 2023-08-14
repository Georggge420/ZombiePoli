state = scriptPlayerStateFree;
stateAttack = meleeAttack;
hitByAttack = -1;
lastState = state;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));


image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = global.speedW;
speedRoll = global.speedR;
distanceRoll = 200;
attackPoints = global.AP;
spriteRoll = sprPlayerRoll;
spriteRun = sprPlayerRun;
spriteIdle = sprPlayerIdle;
localFrame=0;
distanceBonk = 80;
distanceBonkHeight = 50;
speedBonk = 1.5;
z=0;


hitColdown = 0;
healColdown = 0;
estadoVivo=true;

if(global.targetX != -1){
	x=global.targetX;
	y=global.targetY;
	direction = global.targetDirection;
}



