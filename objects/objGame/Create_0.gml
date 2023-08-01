//Globales y iniciales
randomize();
global.gamePaused = false;
global.textSpeed =	.5;

global.targetRoom = -1;
global.targetX = -1;
global.targetY = -1;
global.targetDirection = 0;

global.iCamara = instance_create_layer(0,0,layer,objCamara);

surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
room_goto(ROOM_START);
