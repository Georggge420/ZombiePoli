state = scriptPlayerStateFree;
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




action = "Idle";
face = "DR";
global.vidaTot = 0;
global.vida=2;
hitColdown = 0;
healColdown = 0;
estadoVivo=true;



