state = scriptPlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));


image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 3.0;
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



