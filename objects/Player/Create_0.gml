state = scriptPlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));


image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 4.0;
speedRoll = 6.0;
distanceRoll = 128;
spriteRoll = sprPlayerRoll;
spriteRun = sprPlayerRun;
spriteIdle = sprPlayerIdle;
localFrame=0;



action = "Idle";
face = "DR";
global.vidaTot = 0;
global.vida=2;
hitColdown = 0;
healColdown = 0;
estadoVivo=true;



